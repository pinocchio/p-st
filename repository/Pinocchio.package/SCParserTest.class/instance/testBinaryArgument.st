tests
testBinaryArgument
	| parser string result |
	parser := scparser binaryMessageDefinition.
	string := PEGStringScanner on: '+= a'.
	result := parser match: string.
	result class should = ASTBinaryMessageDefinition.
	result selector printString should = '+='.
	result parameter class should = ASTVariable.
	result parameter name asString should = 'a'.
	string position should = 4.
	string := PEGStringScanner on: '|= a'.
	(parser match: string) should be isNil.
	string position should = 0.
	string := PEGStringScanner on: '-= abc d'.
	result := parser match: string.
	result class should = ASTBinaryMessageDefinition.
	result selector printString should = '-='.
	result parameter class should = ASTVariable.
	result parameter name asString should = 'abc'.
	string position should = 6