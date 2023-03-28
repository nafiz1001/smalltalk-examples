Class {
	#name : #CharToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
CharToken class >> tokeniser [

	^ KeywordTokeniser pattern: 'char' tokenClass: self
]
