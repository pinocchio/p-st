tests
testCapitalIdentifier
	| parser string |
	parser := scparser capitalIdentifier.
	string := PEGStringScanner on: 'Abcd '.
	(parser match: string) should = 'Abcd'.
	string position should = 4.
	string := PEGStringScanner on: 'AbCd145 '.
	(parser match: string) should = 'AbCd145'.
	string position should = 7.
	string := PEGStringScanner on: 'abcdD'.
	(parser match: string) should be isNil.
	string position should = 0