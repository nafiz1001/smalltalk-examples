Class {
	#name : #PlusToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
PlusToken class >> tokeniser [

	^ KeywordTokeniser pattern: '+' tokenClass: self
]
