Class {
	#name : #GtToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
GtToken class >> tokeniser [

	^ KeywordTokeniser pattern: '>' tokenClass: self
]
