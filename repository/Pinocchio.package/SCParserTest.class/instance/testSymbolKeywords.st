tests
testSymbolKeywords
	| parser string |
	parser := scparser symbolKeywords.
	string := PEGStringScanner on: 'abcd:def: '.
	(parser match: string) should = 'abcd:def:'.
	string position should = 9.
	string := PEGStringScanner on: 'abcd '.
	(parser match: string) should be isNil.
	string position should = 0