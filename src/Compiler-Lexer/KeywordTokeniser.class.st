Class {
	#name : #KeywordTokeniser,
	#superclass : #DFABasedTokeniser,
	#category : #'Compiler-Lexer'
}

{ #category : #accessing }
KeywordTokeniser class >> pattern: aPattern tokenClass: aTokenClass [

	| instance startState finalState dfa |
	instance := self new.
	startState := State name: 'START'.
	finalState := aPattern
		              inject: startState
		              into: [ :prevState :nextChar | 
			              | nextState nextEdge |
			              nextState := State name: nextChar.
			              nextEdge := Edge
				                          condition: [ :c | c = nextChar ]
				                          nextState: nextState.
			              prevState setEdges: (Array with: nextEdge).
			              nextState ].
	dfa := DFA
		       startState: startState
		       finalStates: (Array with: finalState).
	instance setDFA: dfa.
	instance setTokenClass: aTokenClass .
	^ instance
]
