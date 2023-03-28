Class {
	#name : #AndToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
AndToken class >> tokeniser [
	^ KeywordTokeniser pattern: '&' tokenClass: self
]
