Class {
	#name : #ReturnToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
ReturnToken class >> tokeniser [

	^ KeywordTokeniser pattern: 'return' tokenClass: self
]
