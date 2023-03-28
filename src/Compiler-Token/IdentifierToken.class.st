Class {
	#name : #IdentifierToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
IdentifierToken class >> tokeniser [

	^ IdentifierTokeniser new
]
