Class {
	#name : #LogandToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
LogandToken class >> tokeniser [

	^ KeywordTokeniser pattern: '&&' tokenClass: self
]
