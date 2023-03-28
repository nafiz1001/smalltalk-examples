Class {
	#name : #DFABasedTokeniser,
	#superclass : #Tokeniser,
	#instVars : [
		'dfa'
	],
	#category : #'Compiler-Lexer'
}

{ #category : #testing }
DFABasedTokeniser >> isValid [
	^dfa state isNil not
]

{ #category : #abstract }
DFABasedTokeniser >> putChar: aChar [
	dfa nextState: aChar.
	^self isValid
]

{ #category : #private }
DFABasedTokeniser >> setDFA: aDFA [
	dfa := aDFA.
	^self
]

{ #category : #testing }
DFABasedTokeniser >> wasDone [

	^ dfa wasDone
]
