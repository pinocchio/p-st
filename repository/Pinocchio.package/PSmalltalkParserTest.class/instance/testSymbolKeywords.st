tests
testSymbolKeywords
	| parser string |
	parser := pparser symbolKeywords.
	string := PEGStringScanner on: 'abcd:def: '.
	(parser match: string) should = 'abcd:def:'.
	string position should = 9.
	string := PEGStringScanner on: 'abcd '.
	[ parser match: string ] should signal: PEGParsingFailure.