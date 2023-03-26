"
A CharLiteralTokeniserTest is a test class for testing the behavior of CharLiteralTokeniser
"
Class {
	#name : #CharLiteralTokeniserTest,
	#superclass : #TokeniserTestCase,
	#category : #'Compiler-Lexer-Tests'
}

{ #category : #tests }
CharLiteralTokeniserTest >> testEmptyChar [

	| tokeniser |
	self
		tokeniser: (tokeniser := CharLiteralTokeniser new)
		putChar: $'
		isValid: true
		isDone: false;
		tokeniser: tokeniser
		putChar: $'
		isValid: false
		isDone: false
]

{ #category : #tests }
CharLiteralTokeniserTest >> testValidCharToken [

	| tokeniser |
	self
		tokeniser: (tokeniser := CharLiteralTokeniser new)
		putChar: $'
		isValid: true
		isDone: false;
		tokeniser: tokeniser
		putChar: $2
		isValid: true
		isDone: false;
		tokeniser: tokeniser
		putChar: $'
		isValid: true
		isDone: true
]

{ #category : #tests }
CharLiteralTokeniserTest >> testValidEscapedCharToken [

	| tokeniser |
	self
		tokeniser: (tokeniser := CharLiteralTokeniser new)
		putChar: $'
		isValid: true
		isDone: false;
		tokeniser: tokeniser
		putChar: $\
		isValid: true
		isDone: false;
		tokeniser: tokeniser
		putChar: $\
		isValid: true
		isDone: false;
		tokeniser: tokeniser
		putChar: $'
		isValid: true
		isDone: true
]
