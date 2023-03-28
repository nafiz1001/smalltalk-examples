Class {
	#name : #IntLiteralTokeniser,
	#superclass : #DFABasedTokeniser,
	#category : #'Compiler-Lexer'
}

{ #category : #initialization }
IntLiteralTokeniser >> initialize [

	| startState numberState |
	startState := State name: 'START'.
	numberState := State name: 'number'.
	startState setEdges: (Array with: (Edge
				  condition: [ :c | c isDigit and: c ~= $0 ]
				  nextState: numberState)).
	numberState setEdges: (Array with:
			 (Edge condition: [ :c | c isDigit ] nextState: numberState)).
	dfa := DFA
		       startState: startState
		       finalStates: (Array with: numberState).
		tokenClass := IntLiteralToken .
	^ self
]
