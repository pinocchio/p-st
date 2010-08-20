tests
testBracketReadExpression
	| parser string result1 result2 arg |
	parser := pparser expression.
	string := PEGStringScanner on: 'a at: 1'.
	result1 := parser match: string.
	
	string := PEGStringScanner on: 'a[1]'.
	result2 := parser match: string.
	
	result1 should be = result2.