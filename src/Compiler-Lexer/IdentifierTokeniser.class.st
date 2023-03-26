Class {
	#name : #IdentifierTokeniser,
	#superclass : #DFABasedTokeniser,
	#category : #'Compiler-Lexer'
}

{ #category : #initialization }
IdentifierTokeniser >> initialize [

	| startState letterState letterNumberState |
	startState := State name: 'START'.
	letterState := State name: 'letter'.
	letterNumberState := State name: 'letter-number'.
	startState setEdges: (Array with:
			 (Edge
				  condition: [ :c | c isLetter or: c = $_ ]
				  nextState: letterState)).
	letterState setEdges: (Array with:
	(Edge
				  condition: [ :c | c isAlphaNumeric or: c = $_ ]
				  nextState: letterNumberState)).
				letterNumberState setEdges: (Array with:
	(Edge
				  condition: [ :c | c isAlphaNumeric or: c = $_ ]
				  nextState: letterNumberState)).
	dfa := DFA
		       startState: startState
		       finalStates:
		       (Array with: letterState with: letterNumberState).
	^ self
]

{ #category : #initialization }
IdentifierTokeniser >> setDFA [

	^ self error:
		  self class name , ' does not need dfa to be set by setDFA'
]
