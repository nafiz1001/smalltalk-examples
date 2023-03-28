Class {
	#name : #VoidToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
VoidToken class >> tokeniser [

	^ KeywordTokeniser pattern: 'void' tokenClass: self
]
