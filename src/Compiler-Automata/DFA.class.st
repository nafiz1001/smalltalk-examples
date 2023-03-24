Class {
	#name : #DFA,
	#superclass : #FSA,
	#category : #'Compiler-Automata'
}

{ #category : #accessing }
DFA >> nextState: alphabet [
	self nextStates: alphabet.
	^self state
]

{ #category : #accessing }
DFA >> state [
	| currStates |
	currStates := self states.
	^currStates isEmpty ifFalse: [ currStates first ] ifTrue: [ nil ]
]
