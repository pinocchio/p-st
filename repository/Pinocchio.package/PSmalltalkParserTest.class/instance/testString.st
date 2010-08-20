tests
testString
	| parser string |
	parser := pparser string.
	string := PEGStringScanner on: ''.
	[ parser match: string ] should signal: PEGParsingFailure.
	string position should = 0.
	string := PEGStringScanner on: '''abc'''.
	(parser match: string) should = 'abc'.
	string position should = 5.
	string := PEGStringScanner on: '''abc'''''.
	(parser match: string) should = 'abc'.
	string position should = 5.
	string := PEGStringScanner on: '''abc''''d'''.
	(parser match: string) should = 'abc''d'.
	string position should = 8