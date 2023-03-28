Class {
	#name : #LogorToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
LogorToken class >> tokeniser [

	^ KeywordTokeniser pattern: '||' tokenClass: self
]
