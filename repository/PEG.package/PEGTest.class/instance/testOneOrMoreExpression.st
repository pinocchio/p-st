tests
testOneOrMoreExpression
	| string exp1 exp2 exp3 exp |
	string := PEGStringScanner on: 'teesest'.
	exp1 := PEGTerminal new: 'te'.
	exp2 := PEGTerminal new: 'es'.
	exp3 := PEGTerminal new: 't'.
	exp := PEGOneOrMoreExpression new: exp1.
	(exp match: string) should not be isNil.
	string position should = 2.
	exp := PEGOneOrMoreExpression new: exp2.
	(exp match: string) should not be isNil.
	string position should = 6.
	(exp match: string) should be isNil.
	string position should = 6