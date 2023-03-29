Class {
	#name : #CharLiteralTokeniser,
	#superclass : #DFABasedTokeniser,
	#category : #'Compiler-Lexer'
}

{ #category : #initialization }
CharLiteralTokeniser >> initialize [

	| dfaFactory |
	dfaFactory := DFAFactory new
		              from: #start to: #firstQuote transitionOnChar: $';
		              from: #firstQuote
		              to: #char
		              transitionOnNotChars: #( $\ $' );
		              from: #char to: #lastQuote transitionOnChar: $';
		              from: #firstQuote to: #backslash transitionOnChar: $\;
		              from: #backslash
		              to: #escapedChar
		              transitionOnChars: #( $t $b $n $r $f $\ $" $' $0 );
		              from: #escapedChar
		              to: #lastQuote
		              transitionOnChar: $';
		              setStartState: #start;
		              setFinalStates: #( #lastQuote ).
	dfa := dfaFactory createDFA.
	tokenClass := CharLiteralToken.
	^ self
]
