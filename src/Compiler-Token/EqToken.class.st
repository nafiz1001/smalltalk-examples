Class {
	#name : #EqToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
EqToken class >> tokeniser [

	^ KeywordTokeniser pattern: '==' tokenClass: self
]
