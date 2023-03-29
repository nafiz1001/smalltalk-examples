Class {
	#name : #IdentifierTokeniser,
	#superclass : #DFABasedTokeniser,
	#category : #'Compiler-Lexer'
}

{ #category : #initialization }
IdentifierTokeniser >> initialize [

	| dfaFactory |
	dfaFactory := DFAFactory new
		              from: #start
		              to: #firstChar
		              transitionOnBlock: [ :c | c isLetter or: c = $_ ];
		              from: #firstChar
		              to: #restChar
		              transitionOnBlock: [ :c | c isAlphaNumeric or: c = $_ ];
from: #restChar
		              to: #restChar
		              transitionOnBlock: [ :c | c isAlphaNumeric or: c = $_ ];
		              setStartState: #start;
		              setFinalStates: #( #firstChar #restChar ).
	dfa := dfaFactory createDFA.
	tokenClass := IdentifierToken.
	^ self
]
