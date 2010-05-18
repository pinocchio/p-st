converting
ast: aString
	| ast |
	ast := parser fullmatch: (PEGStringScanner on: aString separator: scparser separator).
	ast should not be isNil.
	^ visitor visit: ast