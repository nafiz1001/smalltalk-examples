Class {
	#name : #FSA,
	#superclass : #Object,
	#instVars : [
		'startState',
		'finalStates',
		'states',
		'wasDone'
	],
	#category : #'Compiler-Automata'
}

{ #category : #'instance initialization' }
FSA class >> startState: aStartState finalStates: someFinalStates [

	^ self new
		  setStartState: aStartState;
		  setFinalStates: someFinalStates;
		setWasDone: false;
		  reset
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
	self isFinalState ifTrue: [ self setWasDone: true ].
	^ states
]

{ #category : #starting }
FSA >> reset [
	states := Array with: startState.
	^self
]

{ #category : #private }
FSA >> setFinalStates: someFinalStates [
	finalStates := someFinalStates.
	self reset.
	^self
]

{ #category : #private }
FSA >> setStartState: aStartState [
	startState := aStartState.
	self reset.
	^self
]

{ #category : #private }
FSA >> setWasDone: aValue [
	wasDone := aValue
]

{ #category : #accessing }
FSA >> states [
	^states
]

{ #category : #accessing }
FSA >> wasDone [
	^ wasDone 
]
