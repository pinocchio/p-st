tests
testSequenceOmit
	| string exp1 exp2 seq1 |
	string := PEGStringScanner on: 'abc'.
	exp1 := 'a' asParser omit.
	exp2 := 'b' asParser.
	seq1 := exp1 && exp2.
	(seq1 match: string) should = $b.
	string position should = 2