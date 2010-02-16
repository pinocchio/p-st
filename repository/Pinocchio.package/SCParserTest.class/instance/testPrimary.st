tests
testPrimary
	| parser string result |
	parser := scparser primary.	" primary variable"
	string := PEGStringScanner on: 'abc '.
	result := parser match: string.
	result class should = ASTVariable.
	result name should = 'abc'.
	string position should = 3.	" literal "
	string := PEGStringScanner on: '3'.
	result := parser match: string.
	result class should = ASTNumber.
	result number should = '3'.
	result base should = '10'.
	string position should = 1