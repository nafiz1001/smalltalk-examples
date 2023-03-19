Class {
	#name : #State,
	#superclass : #Object,
	#instVars : [
		'name',
		'edges'
	],
	#category : #'Compiler-Automata'
}

{ #category : #'instance initialization' }
State class >> name: aName edges: someEdges [
	^self new
		setName: aName;
		setEdges: someEdges
]

{ #category : #accessing }
State >> edges [
	^edges
]

{ #category : #accessing }
State >> name [
	^name
]

{ #category : #initialization }
State >> setEdges: someEdges [
	edges := someEdges.
	^self
]

{ #category : #initialization }
State >> setName: aName [
	name := aName.
	^self
]
