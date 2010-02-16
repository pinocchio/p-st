tests
testMethod3
	" We just allow fully MessageExpressions in our annotations. Semantic checker will catch this (probably :)) "

	| parser string result |
	parser := scparser method.
	string := 'withA: a withB: b withC: c
		^ 1
	'.
	result := parser parse: string.
	result hasReturnExpression should be true.
	result class should = ASTMethod.
	result message asString should = 'withA:withB:withC:'