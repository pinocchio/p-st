tests
testSeparator
	| string |
	string := PEGStringScanner on: ' a'.
	(PEGParser separator match: string) should not be isNil.
	string position should = 1.
	string := PEGStringScanner on: ' 	 a'.
	(PEGParser separator match: string) should not be isNil.
	string position should = 3