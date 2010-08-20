tests
testKeyword
	| parser string |
	parser := pparser keyword.
	string := PEGStringScanner on: 'abcd: '.
	(parser match: string) should = 'abcd:'.
	string position should = 5.
	string := PEGStringScanner on: 'abcd '.
	[ parser match: string ] should signal: PEGParsingFailure