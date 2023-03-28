Class {
	#name : #CommentToken,
	#superclass : #Token,
	#category : #'Compiler-Token'
}

{ #category : #'instance creation' }
CommentToken class >> tokeniser [
	^ CommentTokeniser new
]
