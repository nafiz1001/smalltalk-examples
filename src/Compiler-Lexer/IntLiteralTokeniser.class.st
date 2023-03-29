Class {
	#name : #IntLiteralTokeniser,
	#superclass : #DFABasedTokeniser,
	#category : #'Compiler-Lexer'
}

{ #category : #initialization }
IntLiteralTokeniser >> initialize [

	| dfaFactory |
	dfaFactory := DFAFactory new
		              from: #start
		              to: #digit
		              transitionOnBlock: [ :c | c isDigit ];
		              from: #digit
		              to: #digit
		              transitionOnBlock: [ :c | c isDigit ];
		              setStartState: #start;
		              setFinalStates: #( #digit ).
	dfa := dfaFactory createDFA.
	tokenClass := IntLiteralToken.
	^ self
]
