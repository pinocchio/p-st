tests
testNotExpression
	| string exp1 exp2 exp exp3 |
	string := PEGStringScanner on: 'teesest'.
	exp1 := PEGTerminal new: 'te'.
	exp2 := PEGTerminal new: 'es'.
	
	exp := PEGNotExpression new: exp1.
	(exp match: string) should be isNil.
	string position should = 0.
	
	exp := PEGNotExpression new: exp2.
	(exp match: string) should = 't'.
	string position should = 1.	" Fail on end of string. "
		
	string := PEGStringScanner on: ''.
	(exp match: string) should be isNil.
	
	string := PEGStringScanner on: 'test'.
	exp3 := 'x' asPEG not consume: false.
	(exp3 match: string) should not be isNil.
	string position should = 0.
	exp3 := 'x' asPEG not.
	(exp3 match: string) should = 't'.
	string position should = 1.
	
	string := PEGStringScanner on: ''.
	exp3 := 'x' asPEG not consume: false.
	(exp3 match: string) should not be isNil.
	string position should = 0