tests
testBracketReadExpression2
	| parser string result1 result2 arg result3 result4 result5 result31 |
	parser := pparser expression.
	string := PEGStringScanner on: 'a at: (b at: 2)'.
	result1 := parser match: string.
	
	string := PEGStringScanner on: 'a[b[2]]'.
	result2 := parser match: string.
	
	string := PEGStringScanner on: 'a at: b[2]'.
	result3 := parser match: string.
	
	string := PEGStringScanner on: 'a at: b [2]'.
	result31 := parser match: string.
	
	
	string := PEGStringScanner on: 'a[b at:2]'.
	result4 := parser match: string.
	
	string := PEGStringScanner on: 'a[ b at:2 ]'.
	result5 := parser match: string.
	
	result1 should be = result2.
	result1 should be = result3.
	result1 should be = result31.
	result1 should be = result4.
	result1 should be = result5.