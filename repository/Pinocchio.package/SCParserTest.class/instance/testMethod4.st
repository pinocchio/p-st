tests
testMethod4
	| parser string result |
	parser := scparser method.
	string := 'withA: a withB: b withC: c
		a := b > c.
		a ifTrue: [^ b]
		  ifFalse: [^ c]
	'.
	result := parser parse: string.
	result hasReturnExpression should be true.
	result class should = ASTMethod.
	result message asString should = 'withA:withB:withC:'.
	result statements last hasReturnExpression should be true.