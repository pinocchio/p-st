convenience
ast: aString
	| ast |
	ast := super ast: aString.
	ast := threadedCompiler compile: ast.
	^ PStatefulArray newFrom: ast