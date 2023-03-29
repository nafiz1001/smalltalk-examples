"
A StringLiteralTokeniserTest is a test class for testing the behavior of StringLiteralTokeniser
"
Class {
	#name : #StringLiteralTokeniserTest,
	#superclass : #TokeniserTestCase,
	#category : #'Compiler-Lexer-Tests'
}

{ #category : #tests }
StringLiteralTokeniserTest >> testEmptyString [
	| tokeniser |
	self
		tokeniser: (tokeniser := StringLiteralTokeniser new)
		putChar: $"
		isValid: true
		isDone: false;
		tokeniser: tokeniser
		putChar: $"
		isValid: false
		isDone: false
]

{ #category : #tests }
StringLiteralTokeniserTest >> testEscapedString [

	| tokeniser |
	self
		tokeniser: (tokeniser := StringLiteralTokeniser new)
		putChar: $"
		isValid: true
		isDone: false;
		tokeniser: tokeniser
		putChar: $H
		isValid: true
		isDone: false;
		tokeniser: tokeniser
		putChar: $i
		isValid: true
		isDone: false;
		tokeniser: tokeniser
		putChar: $\
		isValid: true
		isDone: false;
		tokeniser: tokeniser
		putChar: $"
		isValid: true
		isDone: false;
		tokeniser: tokeniser
		putChar: $"
		isValid: true
		isDone: true.

	self
	tokeniser: (tokeniser := StringLiteralTokeniser new)
		putChar: $"
		isValid: true
		isDone: false;
		tokeniser: tokeniser
		putChar: $\
		isValid: true
		isDone: false;
		tokeniser: tokeniser
		putChar: $"
		isValid: true
		isDone: false;
		tokeniser: tokeniser
		putChar: $x
		isValid: true
		isDone: false;
		tokeniser: tokeniser
		putChar: $"
		isValid: true
		isDone: true
]

{ #category : #tests }
StringLiteralTokeniserTest >> testInvalidEscapedString [

	| tokeniser |
	self
		tokeniser: (tokeniser := StringLiteralTokeniser new)
		putChar: $"
		isValid: true
		isDone: false;
		tokeniser: tokeniser
		putChar: $H
		isValid: true
		isDone: false;
		tokeniser: tokeniser
		putChar: $i
		isValid: true
		isDone: false;
		tokeniser: tokeniser
		putChar: $\
		isValid: true
		isDone: false;
		tokeniser: tokeniser
		putChar: $a
		isValid: false
		isDone: false
]

{ #category : #tests }
StringLiteralTokeniserTest >> testInvalidString [

	| tokeniser |
	self
		tokeniser: (tokeniser := StringLiteralTokeniser new)
		putChar: $a
		isValid: false
		isDone: false
]

{ #category : #tests }
StringLiteralTokeniserTest >> testValidString [

	| tokeniser |
	self
		tokeniser: (tokeniser := StringLiteralTokeniser new)
		putChar: $"
		isValid: true
		isDone: false;
		tokeniser: tokeniser
		putChar: $H
		isValid: true
		isDone: false;
		tokeniser: tokeniser
		putChar: $i
		isValid: true
		isDone: false;
		tokeniser: tokeniser
		putChar: $!
		isValid: true
		isDone: false;
		tokeniser: tokeniser
		putChar: $"
		isValid: true
		isDone: true
]
