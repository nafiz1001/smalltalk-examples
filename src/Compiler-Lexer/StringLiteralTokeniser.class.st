Class {
	#name : #StringLiteralTokeniser,
	#superclass : #DFABasedTokeniser,
	#category : #'Compiler-Lexer'
}

{ #category : #initialization }
StringLiteralTokeniser >> initialize [

	| startState startQuoteState charState escapeState escapedCharState endQuoteState |
	startState := State name: 'START'.
	startQuoteState := State name: 'start-quote'.
	charState := State name: 'char'.
	escapeState := State name: '\'.
	escapedCharState := State name: 'escaped-char'.
	endQuoteState := State name: 'end-quote'.
	startState setEdges: (Array with:
			 (Edge condition: [ :c | c = $" ] nextState: startQuoteState)).
	startQuoteState setEdges: (Array
			 with: (Edge condition: [ :c | c = $\ ] nextState: escapeState)
			 with:
			 (Edge
				  condition: [ :c | c ~= $\ and: c ~= $" ]
				  nextState: charState)).
	charState setEdges: (Array
			 with: (Edge condition: [ :c | c = $" ] nextState: endQuoteState)
			 with: (Edge condition: [ :c | c = $\ ] nextState: escapeState)
			 with:
			 (Edge
				  condition: [ :c | c ~= $\ and: c ~= $" ]
				  nextState: charState)).
	escapeState setEdges: (Array with: (Edge
				  condition: [ :c | 
				  #( $t $b $n $r $f $\ $" $' $\ $0 ) includes: c ]
				  nextState: escapedCharState)).
	escapedCharState setEdges: (Array
			 with: (Edge condition: [ :c | c = $" ] nextState: endQuoteState)
			 with: (Edge condition: [ :c | c = $\ ] nextState: escapeState)
			 with:
			 (Edge
				  condition: [ :c | c ~= $\ and: c ~= $" ]
				  nextState: charState)).
	dfa := DFA
		       startState: startState
		       finalStates: (Array with: endQuoteState).
	^ self
]