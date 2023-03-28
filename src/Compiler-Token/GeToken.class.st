Class {
	#name : #GeToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
GeToken class >> tokeniser [

	^ KeywordTokeniser pattern: '>=' tokenClass: self
]
