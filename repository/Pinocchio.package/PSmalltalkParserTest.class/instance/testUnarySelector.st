tests
testUnarySelector
	| parser string result |
	parser := pparser unarySelector.
	string := PEGStringScanner on: 'abcd bla'.
	result := parser match: string.
	result class should = ASTUnarySelector.
	result selector printString should = 'abcd'.
	string position should = 4.
	string := PEGStringScanner on: 'abcd: bla'.
	[ parser match: string] should signal: PEGParsingFailure