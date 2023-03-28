Class {
	#name : #LtToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
LtToken class >> tokeniser [

	^ KeywordTokeniser pattern: '<' tokenClass: self
]
