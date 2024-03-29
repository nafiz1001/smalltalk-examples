"
A KeywordTokeniserTest is a test class for testing the behavior of KeywordTokeniser
"
Class {
	#name : #KeywordTokeniserTest,
	#superclass : #TokeniserTestCase,
	#category : #'Compiler-Lexer-Tests'
}

{ #category : #tests }
KeywordTokeniserTest >> testInvalidKeywordTokeniser [

	| pattern tokeniser |
	pattern := 'int'.
	tokeniser := KeywordTokeniser pattern: pattern tokenClass: nil.
	self
		tokeniser: tokeniser
		putChar: $i
		isValid: true
		isDone: false.
	self
		tokeniser: tokeniser
		putChar: $z
		isValid: false
		isDone: false.
	self
		tokeniser: tokeniser
		putChar: $n
		isValid: false
		isDone: false.
	self
		tokeniser: tokeniser
		putChar: $t
		isValid: false
		isDone: false.

	tokeniser := KeywordTokeniser pattern: pattern tokenClass: nil.
	self
		tokeniser: tokeniser
		putChar: $z
		isValid: false
		isDone: false.
	self
		tokeniser: tokeniser
		putChar: $i
		isValid: false
		isDone: false.
	self
		tokeniser: tokeniser
		putChar: $n
		isValid: false
		isDone: false.
	self
		tokeniser: tokeniser
		putChar: $t
		isValid: false
		isDone: false
]

{ #category : #tests }
KeywordTokeniserTest >> testValidKeywordTokeniser [

	| pattern tokeniser |
	pattern := 'int'.
	tokeniser := KeywordTokeniser pattern: pattern tokenClass: nil.
	self
		tokeniser: tokeniser
		putChar: $i
		isValid: true
		isDone: false.
	self
		tokeniser: tokeniser
		putChar: $n
		isValid: true
		isDone: false.
	self
		tokeniser: tokeniser
		putChar: $t
		isValid: true
		isDone: true
]
