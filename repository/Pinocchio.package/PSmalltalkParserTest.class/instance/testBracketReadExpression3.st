tests
testBracketReadExpression3
	| parser string result1 result2  |
	parser := scparser expression.
	string := PEGStringScanner on: '(a at: 2) at: 3'.
	result1 := parser match: string.
	
	string := PEGStringScanner on: 'a[2][3]'.
	result2 := parser match: string.
	
	result1 should be = result2.