Class {
	#name : #LsbrToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
LsbrToken class >> tokeniser [

	^ KeywordTokeniser pattern: '[' tokenClass: self
]
