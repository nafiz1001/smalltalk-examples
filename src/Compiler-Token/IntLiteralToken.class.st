Class {
	#name : #IntLiteralToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
IntLiteralToken class >> tokeniser [

	^ IntLiteralTokeniser new
]
