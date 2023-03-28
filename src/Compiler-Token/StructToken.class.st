Class {
	#name : #StructToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
StructToken class >> tokeniser [

	^ KeywordTokeniser pattern: 'struct' tokenClass: self
]
