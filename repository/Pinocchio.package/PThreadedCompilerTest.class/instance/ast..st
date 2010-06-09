convenience
ast: aString
	| ast |
	ast := (super ast: 'test',String cr,aString) code.
	ast := threadedCompiler compile: ast.
	^ PStatefulArray newFrom: ast