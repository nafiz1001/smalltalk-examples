Class {
	#name : #DivToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
DivToken class >> tokeniser [

	^ KeywordTokeniser pattern: '/' tokenClass: self
]
