tests
testBracketReadExpression1
	| parser string result1 result2 arg |
	parser := scparser expression.
	string := PEGStringScanner on: 'self dict at: 1'.
	result1 := parser match: string.
	
	string := PEGStringScanner on: 'self dict[1]'.
	result2 := parser match: string.
	
	result1 should be = result2.