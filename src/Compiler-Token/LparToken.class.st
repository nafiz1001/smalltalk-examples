Class {
	#name : #LparToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
LparToken class >> tokeniser [

	^ KeywordTokeniser pattern: '(' tokenClass: self
]
