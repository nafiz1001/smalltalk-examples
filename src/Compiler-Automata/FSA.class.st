Class {
	#name : #FSA,
	#superclass : #Object,
	#instVars : [
		'startState',
		'finalStates',
		'states'
	],
	#category : #'Compiler-Automata'
}

{ #category : #'instance initialization' }
FSA class >> startState: aStartState finalStates: someFinalStates [
	^self new
		setStartState: aStartState;
		setFinalStates: someFinalStates;
		reset.
	
]

{ #category : #testing }
FSA >> isFinalState [
	^states includesAny: finalStates
]

{ #category : #accessing }
FSA >> nextStates: alphabet [
	| edges nextEdges nextStates |
	edges := states collect: [ :state | state edges ].
	edges := edges flattened.
	nextEdges := edges select: [ :edge | edge condition value: alphabet ].
	nextStates := nextEdges collect: [ :edge | edge nextState ].
	states := nextStates.
	^states
]

{ #category : #starting }
FSA >> reset [
	states := Array with: startState.
	^self
]

{ #category : #initialization }
FSA >> setFinalStates: someFinalStates [
	finalStates := someFinalStates.
	self reset.
	^self
]

{ #category : #initialization }
FSA >> setStartState: aStartState [
	startState := aStartState.
	self reset.
	^self
]

{ #category : #accessing }
FSA >> states [
	^states
]
