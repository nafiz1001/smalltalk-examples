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

{ #category : #accessing }
Position >> line [
	^line
]

{ #category : #accessing }
Position >> offset [
	^offset
]

{ #category : #initialization }
Position >> setColumn: aColumn [
	column := aColumn.
	^self
]

{ #category : #initialization }
Position >> setLine: aLine [
	line := aLine.
	^self
]

{ #category : #initialization }
Position >> setOffset: aOffset [
	offset := aOffset.
	^self
]
