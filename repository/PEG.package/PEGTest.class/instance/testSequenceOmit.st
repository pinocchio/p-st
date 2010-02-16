tests
testSequenceOmit
	| string exp1 exp2 seq1 |
	string := PEGStringScanner on: 'abc'.
	exp1 := 'a' asPEG omit: true.
	exp2 := 'b' asPEG.
	seq1 := exp1 && exp2.
	(seq1 match: string) should = 'b'.
	string position should = 2