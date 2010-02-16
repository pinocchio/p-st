tests
testSymbolConstant
	| parser string result |
	parser := scparser symbolConstant.
	string := PEGStringScanner on: '#abc'.
	result := parser match: string.
	result class should = ASTSymbol.
	result symbol should = 'abc'.
	string position should = 4