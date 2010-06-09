convenience
ast: aString
	| ast |
	ast := (super ast: aString) code.
	ast := threadedCompiler compile: ast.
	^ PStatefulArray newFrom: ast