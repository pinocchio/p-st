tests
testMemoizeEquals
	| string exp1 result |
	string := PEGStringScanner on: 'te'.
	exp1 := PEGTerminal new: 'te'.
	exp2 := PEGParser named: ''  parsing: (PEGZeroOrMoreExpression new: exp1).
	result := exp2 match: string.
	result should not be isNil.
	string position should = 2.
	
	string position: 0.
	(exp2 match: string) should beSameAs: result