Class {
	#name : #AsterixToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
AsterixToken class >> tokeniser [

	^ KeywordTokeniser pattern: '*' tokenClass: self
]
