/*****************************************************************************
 *  VATA Tree Automata Library
 *
 *  Copyright (c) 2011  Ondra Lengal <ilengal@fit.vutbr.cz>
 *
 *  Description:
 *    Header file for class with automaton description.
 *
 *****************************************************************************/

#ifndef _VATA_AUT_DESCRIPTION_HH_
#define _VATA_AUT_DESCRIPTION_HH_

// VATA headers
#include <vata/vata.hh>
#include <vata/util/triple.hh>
#include <vata/util/two_way_dict.hh>

using namespace std;

namespace VATA
{
	namespace Util
	{
		struct TreeAutomata;
	}
}

struct VATA::Util::TreeAutomata
{
public:   // data types
    typedef string SymbolName;
	typedef pair<SymbolName, int> Symbol; // 2nd element: arity

    typedef int State;
	typedef vector<State> StateVector;
    typedef TwoWayDict<string, State> StateNameToIdMap;

    typedef set<Symbol> SymbolSet;
	typedef set<State> StateSet;
	typedef map<pair<SymbolName, StateVector>, StateSet> TransitionMap;

public:   // data members

	string name;
    SymbolSet symbols;
	StateSet finalStates;
    StateNameToIdMap stateNameToId;
	TransitionMap transitions;

public:   // methods

	TreeAutomata() :
		name(),
		symbols(),
		finalStates(),
        stateNameToId(),
		transitions()
	{ }

	/**
	 * @brief  Relaxed equivalence check
	 *
	 * Checks whether the final states and transitions of two automata descriptions match.
	 */
	bool operator==(const TreeAutomata& rhs) const
	{
		return (finalStates == rhs.finalStates) && (transitions == rhs.transitions);
	}

	/**
	 * @brief  Strict equivalence check
	 *
	 * Checks whether all components of two automata descriptions match.
	 */
	bool StrictlyEqual(const TreeAutomata& rhs) const
	{
		return
			(name == rhs.name) &&
			(symbols == rhs.symbols) &&
			(finalStates == rhs.finalStates) &&
            (stateNameToId.size() == rhs.stateNameToId.size()) &&
			(transitions == rhs.transitions);
	}

	string ToString() const
	{
		string result;
		result += "name: " + name + "\n";
		result += "symbols: " + Convert::ToString(symbols) + "\n";
		result += "number of states: " + Convert::ToString(stateNameToId.size()) + "\n";
		result += "final states: " + Convert::ToString(finalStates) + "\n";
		result += "transitions: \n";
		for (auto trans : transitions)
		{
			result += Convert::ToString(trans) + "\n";
		}

		return result;
	}

private:
    bool is_same_partition(const vector<int> &state_to_partition_id, State a, State b) {
        assert (state_to_partition_id[a] == state_to_partition_id[b]);
        for (auto f : symbols) { // for all functions
            if (f.second < 1) continue; // no test if arity == 0
            StateVector sv(f.second, 0); // declare the input states
            bool overflow;
            do {
                for (int i=0; i<f.second; i++) {
                    sv[i] = a;
                    int resultA, resultB;
                    try {
                        assert(transitions.at(make_pair(f.first, sv)).size() == 1);
                        resultA = state_to_partition_id[*(transitions.at(make_pair(f.first, sv)).begin())];
                    } catch (...) { // must use .at in order to trigger exceptions if out of bound
                        resultA = -1;
                    }
                    sv[i] = b;
                    try {
                        assert(transitions.at(make_pair(f.first, sv)).size() == 1);
                        resultB = state_to_partition_id[*(transitions.at(make_pair(f.first, sv)).begin())];
                    } catch (...) { // must use .at in order to trigger exceptions if out of bound
                        resultB = -1;
                    }
                    if (resultA != resultB) return false;
                    if (i+1 < f.second)
                        swap(sv[i], sv[i+1]);
                }
                for (int i=0; i<f.second-1; i++) {
                    swap(sv[i], sv[i+1]);
                }
                
                overflow = (f.second == 1);
                if (!overflow) { // f.second > 1
                    sv[1]++;
                    for (int i=1; i<f.second; i++) {
                        if (sv[i] == static_cast<int>(stateNameToId.size())) {
                            if (i == f.second - 1) {
                                overflow = true;
                                break;
                            } else {
                                sv[i] = 0;
                                sv[i+1]++;
                            }
                        } else break;
                    }
                }
            } while (!overflow);
        }
        return true;
    }
public:

    void minimize() {
        /*******************************************************************/
        // Part 1: Partition states according to final states.
        vector<StateVector> partition;
        partition.push_back({}); // non-final states
        partition.push_back({}); // final states
        for (unsigned i=0; i<stateNameToId.size(); i++) {
            if (finalStates.find(i) == finalStates.end()) // non-final state
                partition[0].push_back(i);
            else
                partition[1].push_back(i);
        }
        /*******************************************************************/

        /*******************************************************************/
        // Part 2: Main loop of partition refinement.
        vector<int> state_to_partition_id;
        bool changed;
        do {
            changed = false;
            vector<StateVector> new_partition; // 有 .clear 的效果。
            state_to_partition_id = vector<int>(stateNameToId.size(), 0); // 有 .clear 的效果。
            for (unsigned i=0; i<partition.size(); i++) {
                for (auto s : partition[i])
                    state_to_partition_id[s] = i;
            }
            for (auto cell : partition) { // original cell
                map<State, StateVector> refined; // 有 .clear 的效果。
                for (auto s : cell) { // state
                    bool different_from_others = true;
                    for (auto &small_cell : refined) { // check if s belongs to some refined cell
                        if (is_same_partition(state_to_partition_id, s, small_cell.first)) { // compare with "key" (head)
                            small_cell.second.push_back(s);
                            different_from_others = false;
                            break;
                        }
                    }
                    if (different_from_others)
                        refined[s] = StateVector(1, s);
                }
                /*************************************************
                 * set the "changed" flag to true if the partition
                 * changed in this cell. */
                if (refined.size() != 1)
                    changed = true;
                else {
                    for (const auto &small_cell : refined) // only one cell!
                        if (small_cell.second != cell) // the order should be the same
                            changed = true;
                }
                /************************************************/
                // push the refined partition in this cell finally
                for (const auto &small_cell : refined)
                    new_partition.push_back(small_cell.second);
            }
            partition = new_partition;
        } while (changed);
        /*******************************************************************/

        /*******************************************************************/
        // Part 3: Automata reconstruction based on the refined partition.
        StateSet finalStates_new;
        StateNameToIdMap stateNameToId_new;
        TransitionMap transitions_new;

        for (auto s : finalStates)
            finalStates_new.insert(state_to_partition_id[s]);
        finalStates = finalStates_new;

        for (unsigned i=0; i<partition.size(); i++)
            stateNameToId_new.insert(make_pair(stateNameToId.TranslateBwd(partition[i][0]), i));
        stateNameToId = stateNameToId_new;

        for (auto t : transitions) {
            StateVector args = t.first.second;
            for (unsigned i=0; i<args.size(); i++)
                args[i] = state_to_partition_id[args[i]];
            assert(t.second.size() == 1);
            transitions_new.insert(make_pair(make_pair(t.first.first, args), StateSet({state_to_partition_id[*(t.second.begin())]})));
        }
        transitions = transitions_new;
        /*******************************************************************/
    }
};

#endif
