Class {
	#name : #DFAFactory,
	#superclass : #Object,
	#instVars : [
		'states',
		'startState',
		'finalStates'
	],
	#category : #'Compiler-Automata'
}

{ #category : #'instance creation' }
DFAFactory >> createDFA [
| dfa |
dfa := DFA startState: startState finalStates: finalStates.
^ dfa
]

{ #category : #initialization }
DFAFactory >> from: fromStateName to: toStateName transitionOnBlock: aBlock [

	| fromState toState newEdge |
	fromState := self getState: fromStateName.
	toState := self getState: toStateName.
	newEdge := Edge condition: aBlock nextState: toState.
	fromState addEdge: newEdge.
	^ self
]

{ #category : #initialization }
DFAFactory >> from: fromStateName to: toStateName transitionOnChar: aChar [

	^ self
		  from: fromStateName
		  to: toStateName
		  transitionOnChars: (Array with: aChar)
]

{ #category : #initialization }
DFAFactory >> from: fromStateName to: toStateName transitionOnChars: someChars [
	^ self from: fromStateName to: toStateName transitionOnBlock: [ :c | someChars includes: c ]
]

{ #category : #initialization }
DFAFactory >> from: fromStateName to: toStateName transitionOnNotChar: aChar [

	^ self
		  from: fromStateName
		  to: toStateName
		  transitionOnNotChars: (Array with: aChar)
]

{ #category : #initialization }
DFAFactory >> from: fromStateName to: toStateName transitionOnNotChars: someChars [

	^ self
		  from: fromStateName
		  to: toStateName
		  transitionOnBlock: [ :c | (someChars includes: c) not ]
]

{ #category : #private }
DFAFactory >> getState: aStateName [

^	states at: aStateName ifAbsentPut: [ State name: aStateName ].
]

{ #category : #initialization }
DFAFactory >> initialize [

	states := Dictionary new.
	finalStates := #(  ).
	^ self
]

{ #category : #initialization }
DFAFactory >> setFinalStates: someFinalStates [

	finalStates := someFinalStates collect: [ :stateName | self getState: stateName ].
	^ self
]

{ #category : #initialization }
DFAFactory >> setStartState: aStateName [

	startState := self getState: aStateName.
	^ self
]
