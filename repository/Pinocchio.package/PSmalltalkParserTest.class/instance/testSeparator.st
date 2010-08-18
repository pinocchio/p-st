tests
testSeparator
	| parser string |
	parser := scparser separator.
	string := PEGStringScanner on: '"Test"'.
	(parser match: string) should not be isNil.
	string position should = 6.
	string := PEGStringScanner on: ' 	"Test" "boe"	"" ab'.
	(parser match: string) should not be isNil.
	string position should = 18.
	string := PEGStringScanner on: ''.
	(parser match: string) should not be isNil.
	string position should = 0