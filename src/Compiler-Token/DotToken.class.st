Class {
	#name : #DotToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
DotToken class >> tokeniser [

	^ KeywordTokeniser pattern: '.' tokenClass: self
]
