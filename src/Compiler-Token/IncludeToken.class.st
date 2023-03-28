Class {
	#name : #IncludeToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
IncludeToken class >> tokeniser [

	^ KeywordTokeniser pattern: '#include' tokenClass: self
]
