tests
testString
	| parser string |
	parser := scparser string.
	string := PEGStringScanner on: ''.
	(parser match: string) should be isNil.
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