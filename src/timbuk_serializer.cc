/*****************************************************************************
 *  AUTOQ Tree Automata Library
 *
 *  Copyright (c) 2011  Ondra Lengal <ilengal@fit.vutbr.cz>
 *
 *  Description:
 *    Implementation file for a serializer of automata to Timbuk format.
 *
 *****************************************************************************/

// AUTOQ headers
#include <autoq/autoq.hh>
#include <autoq/complex/complex.hh>
#include <autoq/symbol/concrete.hh>
#include <autoq/symbol/symbolic.hh>
#include <autoq/symbol/predicate.hh>
#include <autoq/serialization/timbuk_serializer.hh>

using AUTOQ::Util::Convert;
using AUTOQ::Automata;
using AUTOQ::TreeAutomata;
using AUTOQ::SymbolicAutomata;
using AUTOQ::PredicateAutomata;
using AUTOQ::Serialization::TimbukSerializer;

// Standard library headers
#include <algorithm>
#include <cstdlib>

using std::for_each;

template <>
std::string TimbukSerializer::Serialize(TreeAutomata desc)
{
    desc.fraction_simplification();

	std::string result;

    if (desc.finalStates.size() != 1) {
        system("pause");
        exit(1);
    }
    if (desc.finalStates.at(0) != 0) {
        system("pause");
        exit(1);
    }

    result += "Numbers\n";
    std::map<Complex::Complex, std::string> complexMap;
    for (const auto &t : desc.transitions) {
        if (t.first.is_leaf()) {
            if (complexMap.find(t.first.symbol().complex) != complexMap.end()) {
                continue;
            }
            result += "c" + std::to_string(complexMap.size()) + " := (" + t.first.symbol().complex.at(0).str() + " + " + t.first.symbol().complex.at(1).str() + " * A(1/4) + " + t.first.symbol().complex.at(2).str() + " * A(2/4) + " + t.first.symbol().complex.at(3).str() + " * A(3/4)) / (V2 ^ " + t.first.symbol().complex.at(4).str() + ")\n";
            complexMap[t.first.symbol().complex] = "c" + std::to_string(complexMap.size());
        }
    }

	result += "Transitions\n";
    for (const auto &t : desc.transitions) {
        for (const auto &t2 : t.second) {
            for (const auto &finalSet : t2.second) {
                if (t.first.is_leaf()) {
                    result += "[" + complexMap[t.first.symbol().complex] + "]";
                } else {
                    if (std::is_convertible<TreeAutomata::Symbol, std::string>::value)
                        result += "[" + Convert::ToString(t.first) + "]";
                    else
                        result += Convert::ToString(t.first);
                }
                if (!(t2.first.empty())) {
                    result += "(";
                    result += std::to_string(t2.first[0]); //desc.stateNum.TranslateBwd(t2.first[0]);
                    for (size_t i = 1; i < t2.first.size(); ++i) {
                        result += ", ";
                        result += std::to_string(t2.first[i]); //desc.stateNum.TranslateBwd(t2.first[i]);
                    }
                    result += ")";
                }
                result += " -> ";
                result += std::to_string(finalSet); //desc.stateNum.TranslateBwd(finalSet);
                result += "\n";
            }
        }
    }

	return result;
}

template <typename Symbol>
std::string TimbukSerializer::Serialize(Automata<Symbol> desc)
{
    if constexpr(!std::is_same_v<Symbol, AUTOQ::Symbol::Predicate>) {
        desc.fraction_simplification();
    }

	std::string result;
	result += "Ops ";
	for (auto itSymb = desc.transitions.cbegin();
		itSymb != desc.transitions.cend(); ++itSymb)
	{
        if (std::is_convertible<Symbol, std::string>::value)
            result += "[" + AUTOQ::Util::Convert::ToString(itSymb->first) + "]:" +
			    AUTOQ::Util::Convert::ToString(itSymb->second.begin()->first.size()) + " ";
        else
		    result += AUTOQ::Util::Convert::ToString(itSymb->first) + ":" +
			    AUTOQ::Util::Convert::ToString(itSymb->second.begin()->first.size()) + " ";
	}

	result += "\n";
	result += "Automaton " + (desc.name.empty()? "anonymous" : desc.name);

	result += "\n";
	result += "States ";
    for (auto i=0; i<desc.stateNum; i++) {
        result += std::to_string(i) + " ";
        // result += desc.stateNum.TranslateBwd(i) + " ";
    }
	// for_each(desc.states.cbegin(), desc.states.cend(),
	// 	[&result](const std::string& sStr){ result += sStr + " ";});

	result += "\n";
	result += "Final States ";
    for (auto i : desc.finalStates) {
        result += std::to_string(i) + " ";
        // result += desc.stateNum.TranslateBwd(i) + " ";
    }
	// for_each(desc.finalStates.cbegin(), desc.finalStates.cend(),
	// 	[&result](const std::string& fsStr){ result += fsStr + " ";});

	result += "\n";
	result += "Transitions\n";

    for (const auto &t : desc.transitions) {
        for (const auto &t2 : t.second) {
            for (const auto &finalSet : t2.second) {
                if (std::is_convertible<Symbol, std::string>::value)
                    result += "[" + Convert::ToString(t.first) + "]";
                else
                    result += Convert::ToString(t.first);
                if (!(t2.first.empty())) {
                    result += "(";
                    result += std::to_string(t2.first[0]); //desc.stateNum.TranslateBwd(t2.first[0]);
                    for (size_t i = 1; i < t2.first.size(); ++i) {
                        result += ", ";
                        result += std::to_string(t2.first[i]); //desc.stateNum.TranslateBwd(t2.first[i]);
                    }
                    result += ")";
                }
                result += " -> ";
                result += std::to_string(finalSet); //desc.stateNum.TranslateBwd(finalSet);
                result += "\n";
            }
        }
    }

	return result;
}

// https://bytefreaks.net/programming-2/c/c-undefined-reference-to-templated-class-function
template std::string TimbukSerializer::Serialize(TreeAutomata desc);
template std::string TimbukSerializer::Serialize(SymbolicAutomata desc);
template std::string TimbukSerializer::Serialize(PredicateAutomata desc);