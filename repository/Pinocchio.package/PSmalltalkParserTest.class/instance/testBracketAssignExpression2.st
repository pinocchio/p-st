tests
testBracketAssignExpression2
	| parser string result1 result2 arg result3 |
	parser := pparser expression.
	string := PEGStringScanner on: 'a at: (b at: 2) put: 1 '.
	result1 := parser match: string.
	
	string := PEGStringScanner on: 'a[b[2]] := 1'.
	result2 := parser match: string.
	
	string := PEGStringScanner on: 'a[b at: 2] := 1'.
	result3 := parser match: string.
	
	result1 should be = result2.
	result1 should be = result3.