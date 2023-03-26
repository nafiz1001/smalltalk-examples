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
	^ #(#(#(#RGClassDefinition #(#CharLiteralTokeniser)) #'2023-03-25T18:08:01.414743-04:00') )
]
