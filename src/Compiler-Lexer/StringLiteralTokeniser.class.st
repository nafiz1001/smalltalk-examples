Class {
	#name : #StringLiteralTokeniser,
	#superclass : #DFABasedTokeniser,
	#category : #'Compiler-Lexer'
}

{ #category : #initialization }
StringLiteralTokeniser >> initialize [

	| dfaFactory |
	dfaFactory := DFAFactory new
		              from: #start to: #firstQuote transitionOnChar: $";
		              from: #firstQuote
		              to: #char
		              transitionOnNotChars: #( $\ $" );
		              from: #char to: #char transitionOnNotChars: #( $\ $" );
		              from: #char to: #backslash transitionOnChar: $\;
		              from: #char to: #lastQuote transitionOnChar: $";
		              from: #firstQuote to: #backslash transitionOnChar: $\;
		              from: #backslash
		              to: #escapedChar
		              transitionOnChars: #( $t $b $n $r $f $\ $" $' $0 );
		              from: #escapedChar
		              to: #char
		              transitionOnNotChars: #( $\ $" );
		              from: #escapedChar
		              to: #backslash
		              transitionOnChar: $\;
		              from: #escapedChar
		              to: #lastQuote
		              transitionOnChar: $";
		              setStartState: #start;
		              setFinalStates: #( #lastQuote ).
	dfa := dfaFactory createDFA.
	tokenClass := StringLiteralToken.
	^ self
]
