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
State class >> name: aName [
	^self name: aName edges: #()
]

{ #category : #'instance initialization' }
State class >> name: aName edges: someEdges [

	^ self new
		  setName: aName;
		  setEdges: (OrderedCollection newFrom: someEdges)
]

{ #category : #private }
State >> addEdge: aEdge [

	edges add: aEdge.
	^ self
]

{ #category : #accessing }
State >> edges [
	^edges
]

{ #category : #accessing }
State >> name [
	^name
]

{ #category : #private }
State >> setEdges: someEdges [
	edges := someEdges.
	^self
]

{ #category : #private }
State >> setName: aName [
	name := aName.
	^self
]
