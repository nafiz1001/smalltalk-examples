Class {
	#name : #TokeniserTestCase,
	#superclass : #TestCase,
	#category : #'Compiler-Lexer-Tests'
}

{ #category : #helper }
TokeniserTestCase >> tokeniser: aTokeniser putChar: aChar isValid: goodIsValid isDone: goodIsDone [

	self assert: (aTokeniser putChar: aChar) equals: goodIsValid.
	self assert: aTokeniser isValid equals: goodIsValid.
	self assert: aTokeniser wasDone equals: goodIsDone
]
