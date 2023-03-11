Class {
	#name : #Token,
	#superclass : #Object,
	#instVars : [
		'literal',
		'position'
	],
	#category : #'Compiler-Token'
}

{ #category : #accessing }
Token >> literal [
	^literal
]

{ #category : #accessing }
Token >> position [
	^position
]

{ #category : #initialization }
Token >> setLiteral: aLiteral [
	literal := aLiteral.
	^self
]

{ #category : #initialization }
Token >> setPosition: aPosition [
	position := aPosition.
	^self
]
