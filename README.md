# AutoQ: An automata-based C++ tool for quantum circuit verification
<!-- [![Build Status](https://travis-ci.org/ondrik/libvata.svg?branch=master)](https://travis-ci.org/ondrik/libvata)-->

---

AutoQ is a (highly optimized?) command-line utility written in C++ for Hoare-style quantum circuit verification based on non-deterministic finite tree automata. The following figure is an example illustrating how we use a tree to represent a quantum state, so an automaton can, of course, be used to encode a set of quantum states. The symbol in each internal transition should be a positive integer $n$ indicating the $n$-th qubit, and the symbol in each leaf transition is a 5-tuple of integers describing the probability amplitude of some computational basis state.

<放 paper 的圖>

As for Hoare-style verification, there are three main components: `pre.aut`, `circuit.qasm` and `post.aut`. The first file `pre.aut` describes an automaton that encodes a set $P$ of quantum states. The second file `circuit.qasm` describes a quantum circuit $C$ in QASM format. Notice that this format is not able to initialize the initial quantum state. The last file `post.aut` describes an automaton that encodes another set $Q$ of quantum states. Finally this tool tries to check whether for each state $s$ in $P$, the output state $C(s)$ lies in the set $Q$. If the result is true, we say the specified property is correct.

This tool can also be generalized to support "symbolic" quantum states. In this case, we simply replace some entries of leaf transitions in `pre.aut` with fresh variables. File `constraint.txt` is responsible for imposing constraints on all fresh variables used in `pre.aut`. Let the output automaton from input automaton `pre.aut` through the quantum circuit be `post.aut`. Then file `spec.aut`, which is used to verify `post.aut`, has predicates as symbols in leaf transitions. Each predicate has five variables $\\\$a$, $\\\$b$, $\\\$c$, $\\\$d$ and $\\\$k$. When the predicate's truth value is evaluated for some leaf transition in `post.aut`, these variables will be replaced in order with the computed expressions in the 5-tuple of that leaf transition. We say the predicate is "true" for some leaf transition if it is always true under the constraint specified in `constraint.txt`; otherwise the predicate is "false." Similarly, this tool tries to check whether for each symbolic state $s$ in $P$, the output state $C(s)$ matches some tree in $Q$ such that all predicates in the tree are always true under `constraint.txt`. If the result is true, we say the specified property is correct.

---

## Prerequisites
<!-- In order to compile the library and the command-line interface to the library
the following packages need to be installed on your system:

```
  git (>= 1.6.0.0)
  cmake (>= 2.8.2)
  gcc (>= 4.8.0)
  libboost-filesystem-dev (>= 1.54.0)
  libboost-system-dev (>= 1.54.0)
  libboost-test-dev (>= 1.54.0)
``` -->

---

## Compiling
For compiling the source code of the library and the command-line
interface with compiler optimizations turned on, issue the following command
in the root directory of the library:

```
  $ make release
```

In order to compile the library into a form suitable for debugging (i.e., with
optimizations turned off and some additional runtime checks enabled, issue the
following command:

```
  $ make debug
```

It is recommended to run

```
  $ make test
```

from the repository's root directory after compiling the code to run several
unit tests and check that the compiled code passes them all.

---

## Command-Line Interface
The compiled command-line interface is located in

```
$ ./build/cli/autoq
```

There are three modes: concrete probability amplitudes without specification, concrete probability amplitudes with specification, and symbolic probability amplitudes with specification. The program switches to one of this mode according to `argc`, the number of arguments.

1. Concrete probability amplitudes without specification.
```
$ ./build/cli/autoq benchmarks/Grover/02/pre.aut benchmarks/Grover/02/circuit.qasm
```

2. Concrete probability amplitudes with specification.
```
$ VATA_PATH=/home/alan23273850/libvata/build/cli/vata ./build/cli/autoq benchmarks/Grover/02/pre.aut benchmarks/Grover/02/circuit.qasm benchmarks/Grover/02/post.aut
```
Notice that in this case environment variable `VATA_PATH` locating the binary built from [this commit](https://github.com/alan23273850/libvata/commit/22ce24661a4c4b1e684961330aa54288f7eda7ca) should be provided in order for AutoQ to run the inclusion checking algorithm.

3. Symbolic probability amplitudes with specification.
```
$ ./build/cli/autoq benchmarks/SymbolicGrover/03/pre.aut benchmarks/SymbolicGrover/03/circuit.qasm benchmarks/SymbolicGrover/03/spec.aut benchmarks/SymbolicGrover/03/constraint.txt
```
In this case `VATA_PATH` is no longer required since the inclusion checking algorithm for symbolic automata is different from that for concrete automata.

---

## Examples

1. TODO: Concrete probability amplitude.

2. One iteration of 2-qubit Grover's algorithm increases the probability amplitude of
the solution state, decreases the probability amplitude of other computational basis
states, and maintains the bottom ancilla qubit.

The [initial automaton](https://github.com/alan23273850/AutoQ/blob/main/benchmarks/SymbolicGrover/02/pre.aut) contains exactly one quantum state whose marked amplitude is $a_H$ and unmarked amplitudes are $a_L$. The result automaton after we run the [circuit](https://github.com/alan23273850/AutoQ/blob/main/benchmarks/SymbolicGrover/02/circuit.qasm) should also contain exactly one quantum state whose marked amplitude is $a_H' = (3a_L+a_H)/2$ and unmarked amplitudes are $a_L' = (a_L-a_H)/2$. The prespecified [constraint](https://github.com/alan23273850/AutoQ/blob/main/benchmarks/SymbolicGrover/02/constraint.txt) guarantees that $a_H' > a_H$ and $a_L' < a_L$. Note that the ancilla qubit remains the same. So the [specification](https://github.com/alan23273850/AutoQ/blob/main/benchmarks/SymbolicGrover/02/spec.aut) is responsible for verifying this property.

<用套件補印 automata 和 circuit 的圖>

---

## Input Format
<!-- AutoQ so far supports only the Timbuk format of tree automata. The format is
specified by the following grammar with the start symbol:

```
  <file>            : 'Ops' <label_list> <automaton>

  <label_list>      : <label_decl> <label_decl> ... // a list of label declarations

  <label_decl>      : string ':' int // a symbol declaration (the name and the arity)

  <automaton>       : 'Automaton' string 'States' <state_list> 'Final States' <state_list> 'Transitions' <transition_list>

  <state_list>      : <state> <state> ... // a list of states

  <state>           : string // the name of a state

  <transition_list> : <transition> <transition> ... // a list of transitions

  <transition>      : <label> '(' <state> ',' <state> ',' ... ')' '->' <state> // a transition

  <label>           : string // the name of a label
```

An example could look like this:

```
Ops a:0 b:1 c:2

Automaton A
States q0 q1 q2
Final States q2 
Transitions
a() -> q0
b(q0) -> q1
c(q1, q1) -> q1
c(q1, q1) -> q2
c(q2, q2) -> q2
``` -->

---

## Acknowledgement
<!-- This work was supported by the Czech Science Foundation (within projects
P103/10/0306 and 102/09/H042), the Czech Ministry of Education (projects COST
OC10009 and MSM 0021630528), and the EU/Czech IT4Innovations Centre of
Excellence project CZ.1.05/1.1.00/02.0070. -->

---

## Contact
<!-- If you have further questions, do not hesitate to contact the authors:

  * Ondrej Lengal  <lengal@fit.vutbr.cz> (corresponding author)
  * Jiri Simacek   <simacek@fit.vutbr.cz>
  * Tomas Vojnar   <vojnar@fit.vutbr.cz>
  * Martin Hruska  <ihruska@fit.vutbr.cz>
  * Lukas Holik    <holik@fit.vutbr.cz> -->
