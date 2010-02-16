tests
testExpression
	| string exp1 exp2 exp3 |
	string := PEGStringScanner on: 'teest'.
	exp1 := PEGTerminal new: 'te'.
	exp2 := PEGTerminal new: 'es'.
	exp3 := PEGTerminal new: 't'.	" test string which occurs later on. "
	nil should = (exp2 match: string).
	string position should = 0.
	'te' should = (exp1 match: string).
	string position should = 2.
	nil should = (exp1 match: string).
	string position should = 2.
	'es' should = (exp2 match: string).
	string position should = 4.
	nil should = (exp2 match: string).
	string position should = 4.
	't' should = (exp3 match: string).
	string position should = 5.
	nil should = (exp3 match: string).
	string position should = 5