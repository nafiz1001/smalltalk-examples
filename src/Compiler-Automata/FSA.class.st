Class {
	#name : #FSA,
	#superclass : #Object,
	#instVars : [
		'startState',
		'finalStates',
		'state'
	],
	#category : #'Compiler-Automata'
}

{ #category : #testing }
FSA >> isFinalState [
	^finalStates includes: state
]

{ #category : #accessing }
FSA >> nextState: alphabet [
	self subclassResponsibility 
]

{ #category : #starting }
FSA >> reset [
	state := startState.
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
	state := startState.
	^self
]

{ #category : #accessing }
FSA >> state [
	^state
]
