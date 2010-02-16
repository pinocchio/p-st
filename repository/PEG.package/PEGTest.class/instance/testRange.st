tests
testRange
	| string |
	string := PEGStringScanner on: 'p'.
	((PEGRange between: $a and: $z) match: string) should = 'p'.
	string position should = 1.
	string := PEGStringScanner on: 'a'.
	((PEGRange between: $a and: $z) match: string) should = 'a'.
	string position should = 1.
	string := PEGStringScanner on: 'z'.
	((PEGRange between: $a and: $z) match: string) should = 'z'.
	string position should = 1.
	string := PEGStringScanner on: ' '.
	((PEGRange between: $a and: $z) match: string) should be isNil.
	string position should = 0.
	string := PEGStringScanner on: ''.
	((PEGRange between: $a and: $z) match: string) should be isNil.
	string position should = 0