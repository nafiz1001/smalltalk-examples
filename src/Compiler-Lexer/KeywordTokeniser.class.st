Class {
	#name : #KeywordTokeniser,
	#superclass : #Tokeniser,
	#instVars : [
		'dfa'
	],
	#category : #'Compiler-Lexer'
}

{ #category : #accessing }
KeywordTokeniser class >> pattern: aPattern [

	| instance startState finalState dfa |
	instance := self new.
	startState := State name: 'START'.
	finalState := aPattern
		              inject: startState
		              into: [ :prevState :nextChar | 
			              | nextState nextEdge |
			              nextState := State name: nextChar.
							  nextEdge := (Edge
						                condition: [ :c | c = nextChar ]
						                nextState: nextState).
			              prevState setEdges: (Array with: nextEdge).
			              nextState ].
	dfa := DFA startState: startState finalStates: (Array with: finalState).
	instance setDFA: dfa.
	^ instance
]

{ #category : #testing }
KeywordTokeniser >> isDone [
	^dfa isFinalState
]

{ #category : #testing }
KeywordTokeniser >> isValid [
	^dfa state isNil not
]

{ #category : #abstract }
KeywordTokeniser >> putChar: aChar [
	dfa nextState: aChar.
	^self isValid
]

{ #category : #initialization }
KeywordTokeniser >> setDFA: aDFA [
	dfa := aDFA.
	^self
]
