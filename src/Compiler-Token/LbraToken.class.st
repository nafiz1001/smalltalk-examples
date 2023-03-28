Class {
	#name : #LbraToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
LbraToken class >> tokeniser [

	^ KeywordTokeniser pattern: '{' tokenClass: self
]
