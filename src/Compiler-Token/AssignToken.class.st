Class {
	#name : #AssignToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
AssignToken class >> tokeniser [

	^ KeywordTokeniser pattern: '=' tokenClass: self
]
