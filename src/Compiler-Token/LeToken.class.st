Class {
	#name : #LeToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
LeToken class >> tokeniser [

	^ KeywordTokeniser pattern: '<=' tokenClass: self
]
