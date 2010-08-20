tests
testBracketAssignExpressionNested
	| parser string result1 result2 arg result3 result4 |
	parser := pparser expression.
	string := PEGStringScanner on: 'a at: 1 put: (b at: ''a'' put: 2)'.
	result1 := parser match: string.
	
	string := PEGStringScanner on: 'a[1] := b[ ''a''] := 2'.
	result2 := parser match: string.
	
	string := PEGStringScanner on: 'a[1] := b at:  ''a'' put: 2'.
	result3 := parser match: string.
	
	string := PEGStringScanner on: 'a at: 1 put: (b[ ''a''] := 2)'.
	result4 := parser match: string.
	
	result1 should be = result2.
	result1 should be = result3.
	result1 should be = result4.