extracting
transformMethod: aMethodSource
	|methodAST|
	methodAST :=  scparser method match: (PEGStringScanner on: aMethodSource  separator: scparser separator).
	methodAST sourceObject: aMethodSource.
	^ pinocchioVisitor visit: methodAST.