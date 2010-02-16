tests
testCharacter
	| parser string |
	parser := scparser character.
	string := PEGStringScanner on: '--'.
	(parser match: string) should = '-'.
	string position should = 1.
	string := PEGStringScanner on: '__'.
	(parser match: string) should = '_'.
	string position should = 1.
	string := PEGStringScanner on: '4'.
	(parser match: string) should = '4'.
	string position should = 1.
	string := PEGStringScanner on: 'p'.
	(parser match: string) should = 'p'.
	string position should = 1.
	string := PEGStringScanner on: '&'.
	(parser match: string) should = '&'.
	string position should = 1.
	string := PEGStringScanner on: ''''.
	(parser match: string) should be isNil.
	string position should = 0