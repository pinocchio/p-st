tests
testNumberConstant

	| parser string result |
	parser := scparser numberConstant.
	string := '71742 8'.
	result := parser match: (PEGStringScanner on: string).
	result class should = ASTNumber.
	result number should = '71742'