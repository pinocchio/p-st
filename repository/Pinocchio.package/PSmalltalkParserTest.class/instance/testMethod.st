tests
testMethod
	" We just allow fully MessageExpressions in our annotations. Semantic checker will catch this (probably :)) "

	| parser string result |
	parser := pparser method.
	string := 'a: b c: d
			<abc: 1 "bla"def: (2+2) ghi: (3 b)>
			<a: 4> "test"
			<boe>
			|x y z|
			1 + [ |a| a ] value: 3.
			^ 7 '.
	result := parser parse: string.
	result temporaries size should = 3.
	result annotations size should = 3.
	result statements size should = 2.
	result hasReturnExpression should be true.
	result class should = ASTMethod.
	result message class should = ASTKeywordMessageDefinition.