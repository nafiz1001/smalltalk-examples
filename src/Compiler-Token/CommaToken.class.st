Class {
	#name : #CommaToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
CommaToken class >> tokeniser [

	^ KeywordTokeniser pattern: ',' tokenClass: self
]
