"
An IdentifierTokeniserTest is a test class for testing the behavior of IdentifierTokeniser
"
Class {
	#name : #IdentifierTokeniserTest,
	#superclass : #TokeniserTestCase,
	#category : #'Compiler-Lexer-Tests'
}

{ #category : #tests }
IdentifierTokeniserTest >> testInvalidIdentifierToken [
	| tokeniser |
	tokeniser := IdentifierTokeniser new.
	self tokeniser: tokeniser putChar: $2 isValid: false isDone: false.
	
	tokeniser := IdentifierTokeniser new.
	self tokeniser: tokeniser putChar: $  isValid: false isDone: false.
]

{ #category : #tests }
IdentifierTokeniserTest >> testValidIdentifierToken [
	| tokeniser |
	tokeniser := IdentifierTokeniser new.
	self tokeniser: tokeniser putChar: $i isValid: true isDone: true.
	self tokeniser: tokeniser putChar: $2 isValid: true isDone: true.
	self tokeniser: tokeniser putChar: $_ isValid: true isDone: true.
]
