tests
testIdentifier
	| parser string |
	parser := scparser identifier.
	string := PEGStringScanner on: 'abcd '.
	(parser match: string) should = 'abcd'.
	string position should = 4.
	string := PEGStringScanner on: 'AbCd145 '.
	(parser match: string) should = 'AbCd145'.
	string position should = 7.
	string := PEGStringScanner on: '1a'.
	(parser match: string) should be isNil.
	string position should = 0