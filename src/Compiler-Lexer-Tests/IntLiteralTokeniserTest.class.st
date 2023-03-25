"
An IntLiteralTokeniserTest is a test class for testing the behavior of IntLiteralTokeniser
"
Class {
	#name : #IntLiteralTokeniserTest,
	#superclass : #TokeniserTestCase,
	#category : #'Compiler-Lexer-Tests'
}

{ #category : #tests }
IntLiteralTokeniserTest >> testInvalidIntLiteralToken [

	| tokeniser |
	self
		tokeniser: (tokeniser := IntLiteralTokeniser new)
		putChar: $0
		isValid: false
		isDone: false;
		tokeniser: (tokeniser := IntLiteralTokeniser new)
		putChar: $-
		isValid: false
		isDone: false;
		tokeniser: (tokeniser := IntLiteralTokeniser new)
		putChar: $x
		isValid: false
		isDone: false
]

{ #category : #tests }
IntLiteralTokeniserTest >> testValidIntLiteralToken [

	| tokeniser |
	self
		tokeniser: (tokeniser := IntLiteralTokeniser new)
		putChar: $1
		isValid: true
		isDone: true;
		tokeniser: tokeniser
		putChar: $0
		isValid: true
		isDone: true.
]
