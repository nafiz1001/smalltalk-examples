Class {
	#name : #Position,
	#superclass : #Object,
	#instVars : [
		'line',
		'column',
		'offset'
	],
	#category : #'Compiler-Token'
}

{ #category : #accessing }
Position >> column [
	^column 
]

{ #category : #initialization }
Position >> column: aColumn [
	column := aColumn.
	^self
]

{ #category : #initialization }
Position >> initialize [
    line := 0.
    column := 0.
    offset := 0.
]

{ #category : #accessing }
Position >> line [
	^line
]

{ #category : #initialization }
Position >> line: aLine [
	line := aLine.
	^self
]

{ #category : #accessing }
Position >> offset [
	^offset
]

{ #category : #initialization }
Position >> offset: aOffset [
	offset := aOffset.
	^self
]
