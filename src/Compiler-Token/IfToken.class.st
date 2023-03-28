Class {
	#name : #IfToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
IfToken class >> tokeniser [

	^ KeywordTokeniser pattern: 'if' tokenClass: self
]
