Class {
	#name : #ScToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
ScToken class >> tokeniser [

	^ KeywordTokeniser pattern: ';' tokenClass: self
]
