Class {
	#name : #CharLiteralToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
CharLiteralToken class >> tokeniser [
	^ CharLiteralTokeniser new
]
