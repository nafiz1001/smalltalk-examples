Class {
	#name : #RsbrToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
RsbrToken class >> tokeniser [

	^ KeywordTokeniser pattern: ']' tokenClass: self
]
