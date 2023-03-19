Class {
	#name : #Edge,
	#superclass : #Object,
	#instVars : [
		'condition',
		'nextState'
	],
	#category : #'Compiler-Automata'
}

{ #category : #'instance initialization' }
Edge class >> condition: aCondition nextState: aState [
	^self new
		setCondition: aCondition;
		setNextState: aState
]

{ #category : #accessing }
Edge >> condition [
	^condition 
]

{ #category : #accessing }
Edge >> nextState [
	^nextState 
]

{ #category : #initialization }
Edge >> setCondition: aCondition [
	condition := aCondition.
	^self
]

{ #category : #initialization }
Edge >> setNextState: aState [
	nextState := aState.
	^self
]
