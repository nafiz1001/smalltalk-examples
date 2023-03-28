Class {
	#name : #Token,
	#superclass : #Object,
	#instVars : [
		'literal',
		'position'
	],
	#category : #'Compiler-Token'
}

{ #category : #'instance initialization' }
Token class >> literal: aLiteral position: aPosition [
	^self new
		setLiteral: aLiteral;
		setPosition: aPosition
]

{ #category : #'instance creation' }
Token class >> tokeniser [
	self subclassResponsibility
]

{ #category : #accessing }
Token >> literal [
	^literal
]

{ #category : #accessing }
Token >> position [
	^position
]

{ #category : #private }
Token >> setLiteral: aLiteral [
	literal := aLiteral.
	^self
]

{ #category : #private }
Token >> setPosition: aPosition [
	position := aPosition.
	^self
]
