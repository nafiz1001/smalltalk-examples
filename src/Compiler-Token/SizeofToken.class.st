Class {
	#name : #SizeofToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
SizeofToken class >> tokeniser [

	^ KeywordTokeniser pattern: 'sizeof' tokenClass: self
]
