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

{ #category : #'instance initialization' }
Position class >> line: aLine column: aColumn offset: aOffset [
	^self new
		setLine: aLine;
		setColumn: aColumn;
		setOffset: aOffset
]

{ #category : #accessing }
Position >> column [
	^column 
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

{ #category : #accessing }
Position >> offset [
	^offset
]

{ #category : #private }
Position >> setColumn: aColumn [
	column := aColumn.
	^self
]

{ #category : #private }
Position >> setLine: aLine [
	line := aLine.
	^self
]

{ #category : #private }
Position >> setOffset: aOffset [
	offset := aOffset.
	^self
]
