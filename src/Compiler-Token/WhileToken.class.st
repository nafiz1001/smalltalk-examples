Class {
	#name : #WhileToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
WhileToken class >> tokeniser [

	^ KeywordTokeniser pattern: 'while' tokenClass: self
]
