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
FSA class >> startState: aStartState finalStates: someFinalStates states: someStates [
	^self new
		setStartState: aStartState;
		setFinalStates: someFinalStates
]

{ #category : #testing }
FSA >> isFinalState [
	^finalStates includesAll: states
]

{ #category : #accessing }
FSA >> nextState: alphabet [
	self subclassResponsibility 
]

{ #category : #starting }
FSA >> reset [
	states := Array with: startState.
	^self
]

{ #category : #initialization }
FSA >> setFinalStates: someFinalStates [
	finalStates := someFinalStates.
	^self
]

{ #category : #initialization }
FSA >> setStartState: aStartState [
	startState := aStartState.
	states := Array with: startState.
	^self
]

{ #category : #accessing }
FSA >> states [
	^states
]
