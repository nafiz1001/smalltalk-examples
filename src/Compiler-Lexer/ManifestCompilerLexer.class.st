"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestCompilerLexer,
	#superclass : #PackageManifest,
	#category : #'Compiler-Lexer-Manifest'
}

{ #category : #'code-critics' }
ManifestCompilerLexer class >> ruleLiteralArrayCharactersRuleV1FalsePositive [
	^ #(#(#(#RGMethodDefinition #(#CharLiteralTokeniser #initialize #false)) #'2023-03-28T17:12:56.889525-04:00') #(#(#RGMethodDefinition #(#StringLiteralTokeniser #initialize #false)) #'2023-03-29T08:28:57.891239-04:00') )
]
