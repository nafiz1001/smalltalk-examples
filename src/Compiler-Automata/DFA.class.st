Class {
	#name : #DFA,
	#superclass : #FSA,
	#category : #'Compiler-Automata'
}

{ #category : #accessing }
DFA >> nextState: alphabet [
	| newStates |
	newStates := self nextStates: alphabet.
	^newStates first
]

{ #category : #accessing }
DFA >> state [
	^self states first
]
