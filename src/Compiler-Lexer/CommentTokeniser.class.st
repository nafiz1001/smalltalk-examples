Class {
	#name : #CommentTokeniser,
	#superclass : #DFABasedTokeniser,
	#category : #'Compiler-Lexer'
}

{ #category : #initialization }
CommentTokeniser >> initialize [

	| startState firstSlash secondSlash insideComment endState |
	startState := State name: 'START'.
	firstSlash := State name: '/'.
	secondSlash := State name: '//'.
	insideComment := State name: 'inside-comment'.
	endState := State name: 'end-comment'.
	startState setEdges:
		(Array with: (Edge condition: [ :c | c = $/ ] nextState: firstSlash)).
	firstSlash setEdges:
		(Array with:
			 (Edge condition: [ :c | c = $/ ] nextState: secondSlash)).
	secondSlash setEdges: (Array
			 with:
			 (Edge
				  condition: [ :c | c ~= Character lf ]
				  nextState: insideComment)
			 with:
			 (Edge condition: [ :c | c = Character lf ] nextState: endState)).
	insideComment setEdges: (Array with: (Edge
				  condition: [ :c | c ~= Character lf ]
				  nextState: insideComment) with:
			 (Edge condition: [ :c | c = Character lf ] nextState: endState)).
	dfa := DFA startState: startState finalStates: (Array with: endState).
	^ self
]
