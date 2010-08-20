tests
testBracketAssignExpression1
	| parser string result1 result2 arg result3 |
	parser := pparser expression.
	string := PEGStringScanner on: 'self dict at: 1 put: 1 '.
	result1 := parser match: string.
	
	string := PEGStringScanner on: 'self dict[1] := 1'.
	result2 := parser match: string.
	
	string := PEGStringScanner on: 'self dict[ 1 ]:=1'.
	result3 := parser match: string.
	
	result1 should be = result2.
	result1 should be = result3.