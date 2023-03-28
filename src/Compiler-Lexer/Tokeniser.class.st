Class {
	#name : #Tokeniser,
	#superclass : #Object,
	#instVars : [
		'tokenClass'
	],
	#category : #'Compiler-Lexer'
}

{ #category : #testing }
Tokeniser >> isValid [
	self subclassResponsibility
]

{ #category : #abstract }
Tokeniser >> putChar: aChar [
	self subclassResponsibility 
]

{ #category : #private }
Tokeniser >> setTokenClass: aTokenClass [

	tokenClass := aTokenClass.
	^self
]

{ #category : #accessing }
Tokeniser >> tokenClass [
^tokenClass 
]

{ #category : #testing }
Tokeniser >> wasDone [
	self subclassResponsibility 
]
