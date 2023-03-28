Class {
	#name : #RbraToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
RbraToken class >> tokeniser [

	^ KeywordTokeniser pattern: '}' tokenClass: self
]
