tests
testSingleCharacterParse
	| string exp1 exp2 seq1 |
	string := PEGStringScanner on: 'abc'.
	exp1 := 'a' asPEG.
	(exp1 match: string) should = 'a'.
	string position should = 1