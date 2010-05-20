extracting
transformMethod: aMethodSource
	| methodAST |
	methodAST := scparser method fullmatch: (PEGStringScanner on: aMethodSource separator: scparser separator).
	methodAST sourceObject: aMethodSource.
	^ pcompiler visit: methodAST