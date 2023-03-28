Class {
	#name : #MinusToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
MinusToken class >> tokeniser [

	^ KeywordTokeniser pattern: '-' tokenClass: self
]
