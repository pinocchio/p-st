convenience
ast: aString
	| ast |
	ast :=  parser match: (PEGStringScanner on: aString).
	ast should not be isNil.
	^ visitor visit: ast.