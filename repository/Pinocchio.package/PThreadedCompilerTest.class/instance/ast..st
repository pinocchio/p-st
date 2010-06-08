as yet unclassified
ast: aString
	| ast |
	ast := super ast: aString.
	ast := threadedCompiler visit: ast.
	^ ast