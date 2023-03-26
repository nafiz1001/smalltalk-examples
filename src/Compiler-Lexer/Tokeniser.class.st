Class {
	#name : #Tokeniser,
	#superclass : #Object,
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
