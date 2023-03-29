Class {
	#name : #KeywordTokeniser,
	#superclass : #DFABasedTokeniser,
	#category : #'Compiler-Lexer'
}

{ #category : #accessing }
KeywordTokeniser class >> pattern: aPattern tokenClass: aTokenClass [

	| dfaFactory instance |
	dfaFactory := DFAFactory new.
	dfaFactory
		from: #start
		to: aPattern first
		transitionOnChar: aPattern first.
		1 to: aPattern size - 1 do: [ :i | | l r | l := aPattern at: i. r := aPattern at: i + 1. dfaFactory from: l to: r transitionOnChar: r ].
	dfaFactory setStartState: #start.
	dfaFactory setFinalStates: (Array with: aPattern last).
	instance := self new.
	instance setDFA: dfaFactory createDFA.
	instance setTokenClass: aTokenClass.
	^ instance
]
