"
A PositionTest is a test class for testing the behavior of Position
"
Class {
	#name : #PositionTest,
	#superclass : #TestCase,
	#category : #'Compiler-Token-Tests'
}

{ #category : #tests }
PositionTest >> testSetters [

	| position |
	position := Position new
		            setLine: 1;
		            setColumn: 2;
		            setOffset: 3.
	self assert: position line equals: 1.
	self assert: position column equals: 2.
	self assert: position offset equals: 3
]
