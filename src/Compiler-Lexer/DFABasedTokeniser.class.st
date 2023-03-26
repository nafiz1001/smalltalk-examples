Class {
	#name : #DFABasedTokeniser,
	#superclass : #Tokeniser,
	#instVars : [
		'dfa'
	],
	#category : #'Compiler-Lexer'
}

{ #category : #testing }
DFABasedTokeniser >> isDone [
	^dfa isFinalState
]

{ #category : #testing }
DFABasedTokeniser >> isValid [
	^dfa state isNil not
]

{ #category : #initialization }
DFABasedTokeniser >> mySetDFA: aDFA [
	dfa := aDFA.
	^self
]

{ #category : #abstract }
DFABasedTokeniser >> putChar: aChar [
	dfa nextState: aChar.
	^self isValid
]
