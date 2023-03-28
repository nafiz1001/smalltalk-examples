Class {
	#name : #IntToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
IntToken class >> tokeniser [

	^ KeywordTokeniser pattern: 'int' tokenClass: self
]
