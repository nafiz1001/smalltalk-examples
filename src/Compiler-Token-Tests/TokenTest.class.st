"
A TokenTest is a test class for testing the behavior of Token
"
Class {
	#name : #TokenTest,
	#superclass : #TestCase,
	#category : #'Compiler-Token-Tests'
}

{ #category : #tests }
TokenTest >> testSetters [
	|token position|
	position := Position new.
	token := Token new
		literal: 'bob';
		position: position.
	self assert: token literal equals: 'bob'.
	self assert: token position == position.
]
