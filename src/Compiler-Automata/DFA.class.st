Class {
	#name : #DFA,
	#superclass : #FSA,
	#category : #'Compiler-Automata'
}

{ #category : #accessing }
DFA >> nextState: alphabet [
	state := state edges detect: [ :edge | edge condition value: alphabet ]; nextState.
	^state
]
