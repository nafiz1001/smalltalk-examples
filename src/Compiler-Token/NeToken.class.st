Class {
	#name : #NeToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
NeToken class >> tokeniser [

	^ KeywordTokeniser pattern: '!=' tokenClass: self
]
