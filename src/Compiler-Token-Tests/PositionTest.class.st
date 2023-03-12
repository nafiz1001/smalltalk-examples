"
A PositionTest is a test class for testing the behavior of Position
"
Class {
	#name : #PositionTest,
	#superclass : #TestCase,
	#category : #'Compiler-Token-Tests'
}

{ #category : #tests }
PositionTest >> testInitialize [
	| position |
	position := Position new.
	self assert: position line equals: 0.
	self assert: position column equals: 0.
	self assert: position offset equals: 0
]

{ #category : #tests }
PositionTest >> testSetters [

	| position |
	position := Position new
		            line: 1;
		            column: 2;
		            offset: 3.
	self assert: position line equals: 1.
	self assert: position column equals: 2.
	self assert: position offset equals: 3
]
