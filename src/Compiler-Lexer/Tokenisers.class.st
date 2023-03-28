Class {
	#name : #Tokenisers,
	#superclass : #Tokeniser,
	#instVars : [
		'tokenisers',
		'doneTokens'
	],
	#category : #'Compiler-Lexer'
}

{ #category : #accessing }
Tokenisers >> doneTokens [

	^ doneTokens
]

{ #category : #initialization }
Tokenisers >> initialize [

	| subclasses |
	subclasses := Token subclasses.
	tokenisers := subclasses collect: [ :subclass | subclass tokeniser ].
	tokenisers := tokenisers reject: [ :tokeniser | tokeniser isNil ].
	doneTokens := #(  ).
	^ self
]

{ #category : #testing }
Tokenisers >> isValid [

	^ tokenisers anySatisfy: [ :tokeniser | tokeniser isValid ]
]

{ #category : #abstract }
Tokenisers >> putChar: aChar [

	| currentlyDoneTokenisers |
	tokenisers do: [ :tokeniser | tokeniser putChar: aChar ].
	currentlyDoneTokenisers := tokenisers select: [ :tokeniser | 
		                           tokeniser isValid and:
			                           tokeniser wasDone ].
	currentlyDoneTokenisers ifNotEmpty: [ 
		doneTokens := currentlyDoneTokenisers collect: [ :tokeniser | tokeniser tokenClass ] ].
	self isValid
]

{ #category : #testing }
Tokenisers >> wasDone [

	^ tokenisers anySatisfy: [ :tokeniser | tokeniser wasDone ]
]
