tests
testLiteral
	| parser string result |
	parser := scparser literal.
	string := PEGStringScanner on: '3'.
	result := parser match: string.
	result class should = ASTNumber.
	result number should = '3'.
	result base should = '10'.
	string position should = 1