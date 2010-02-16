tests
testSequenceExpression
	| string exp1 exp2 exp3 seq1 seq2 seq3 |
	string := PEGStringScanner on: 'teest'.
	exp1 := PEGTerminal new: 'te'.
	exp2 := PEGTerminal new: 'es'.
	exp3 := PEGTerminal new: 't'.
	seq1 := PEGSequenceExpression new.
	seq1 <& exp1 <& exp2.
	seq1 match: string.
	string position should = 4.
	seq1 match: string.
	string position should = 4.
	seq2 := PEGSequenceExpression new.
	seq2 <& exp3 <& exp2.
	seq2 match: string.
	string position should = 4.
	seq3 := PEGSequenceExpression new.
	seq3 <& exp3.
	seq3 match: string.
	string position should = 5