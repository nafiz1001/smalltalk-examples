Class {
	#name : #RparToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
RparToken class >> tokeniser [

	^ KeywordTokeniser pattern: ')' tokenClass: self
]
