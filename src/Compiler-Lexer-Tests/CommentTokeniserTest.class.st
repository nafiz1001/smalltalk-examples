"
A CommentTokeniserTest is a test class for testing the behavior of CommentTokeniser
"
Class {
	#name : #CommentTokeniserTest,
	#superclass : #TokeniserTestCase,
	#category : #'Compiler-Lexer-Tests'
}

{ #category : #tests }
CommentTokeniserTest >> testNotComment [

	| tokeniser |
	self
		tokeniser: (tokeniser := CommentTokeniser new)
		putChar: $/
		isValid: true
		isDone: false;
		tokeniser: tokeniser
		putChar: Character space
		isValid: false
		isDone: false
]

{ #category : #tests }
CommentTokeniserTest >> testValidComment [

	| tokeniser |
	self
		tokeniser: (tokeniser := CommentTokeniser new)
		putChar: $/
		isValid: true
		isDone: false;
		tokeniser: tokeniser
		putChar: $/
		isValid: true
		isDone: true
]
