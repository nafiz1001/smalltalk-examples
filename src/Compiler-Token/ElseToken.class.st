Class {
	#name : #ElseToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
ElseToken class >> tokeniser [

	^ KeywordTokeniser pattern: 'else' tokenClass: self
]
