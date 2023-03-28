Class {
	#name : #StringLiteralToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
StringLiteralToken class >> tokeniser [

	^ StringLiteralTokeniser new
]
