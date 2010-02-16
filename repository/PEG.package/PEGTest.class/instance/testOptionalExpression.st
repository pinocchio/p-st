tests
testOptionalExpression
	| string exp1 exp2 exp |
	string := PEGStringScanner on: 'teesest'.
	exp1 := PEGTerminal new: 'te'.
	exp2 := PEGTerminal new: 'es'.
	exp := PEGOptionalExpression new: exp1.
	((exp match: string) resultIfFailed: [ 10 ]) should = 'te'.
	string position should = 2.
	((exp match: string) resultIfFailed: [ 10 ]) should = 10.
	string position should = 2.
	exp := PEGOptionalExpression new: exp2.
	((exp match: string) resultIfFailed: [ 10 ]) should = 'es'.
	string position should = 4