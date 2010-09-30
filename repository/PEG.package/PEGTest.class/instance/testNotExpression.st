tests
testNotExpression
	| string exp exp3 |
	string := PEGStringScanner on: 'teesest'.
	exp := PEGConsumingNotTerminal on: $t.
	(exp match: string) should be isNil.
	string position should = 0.
	exp := PEGConsumingNotTerminal on: $e.
	(exp match: string) should = $t.
	string position should = 1.	" Fail on end of string. "
	string := PEGStringScanner on: ''.
	(exp match: string) should be isNil.
	string := PEGStringScanner on: 'test'.
	exp3 := 'x' asParser not omit.
	(exp3 match: string) should not be isNil.
	string position should = 0.
	exp3 := 'x' asParser not consume.
	(exp3 match: string) should = $t.
	string position should = 1.
	string := PEGStringScanner on: ''.
	exp3 := 'x' asParser not.
	(exp3 match: string) should not be isNil.
	string position should = 0