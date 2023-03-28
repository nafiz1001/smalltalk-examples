Class {
	#name : #RemToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
RemToken class >> tokeniser [

	^ KeywordTokeniser pattern: '%' tokenClass: self
]
