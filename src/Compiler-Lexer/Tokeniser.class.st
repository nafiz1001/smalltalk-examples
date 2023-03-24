Class {
	#name : #Tokeniser,
	#superclass : #Object,
	#instVars : [
		'repeatLastChar'
	],
	#category : #'Compiler-Lexer'
}

{ #category : #testing }
Tokeniser >> isDone [
	self subclassResponsibility 
]

{ #category : #testing }
Tokeniser >> isValid [
	self subclassResponsibility
]

{ #category : #abstract }
Tokeniser >> putChar: aChar [
	self subclassResponsibility 
]

{ #category : #initialization }
Tokeniser >> setRepeatLastChar: value [
	repeatLastChar := value.
	^self
]
