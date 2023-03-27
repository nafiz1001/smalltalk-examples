Class {
	#name : #CommentTokeniser,
	#superclass : #DFABasedTokeniser,
	#category : #'Compiler-Lexer'
}

{ #category : #initialization }
CommentTokeniser >> initialize [

	| startState firstSlash secondSlash |
	startState := State name: 'START'.
	firstSlash := State name: '/'.
	secondSlash := State name: '//'.
	startState setEdges:
		(Array with: (Edge condition: [ :c | c = $/ ] nextState: firstSlash)).
	firstSlash setEdges:
		(Array with:
			 (Edge condition: [ :c | c = $/ ] nextState: secondSlash)).
	dfa := DFA
		       startState: startState
		       finalStates: (Array with: secondSlash).
	^ self
]
