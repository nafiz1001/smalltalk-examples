Class {
	#name : #CommentTokeniser,
	#superclass : #DFABasedTokeniser,
	#category : #'Compiler-Lexer'
}

{ #category : #initialization }
CommentTokeniser >> initialize [

	| dfaFactory |
	dfaFactory := DFAFactory new
		              from: #start to: #firstSlash transitionOnChar: $/;
		              from: #firstSlash
		              to: #secondSlash
		              transitionOnChar: $/;
		              from: #secondSlash
		              to: #commented
		              transitionOnNotChar: Character lf;
				              from: #commented
		              to: #commented
		              transitionOnNotChar: Character lf;
		              from: #commented
		              to: #end
		              transitionOnChar: Character lf;
		              setStartState: #start;
		              setFinalStates: #( #end ).
	dfa := dfaFactory createDFA.
	tokenClass := CommentToken.
	^ self
]
