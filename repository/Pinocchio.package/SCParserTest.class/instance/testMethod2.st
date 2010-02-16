tests
testMethod2
	" We just allow fully MessageExpressions in our annotations. Semantic checker will catch this (probably :)) "

	| parser string result |
	parser := scparser method.
	string := 'a: b c: d
			"boe" |x y z| "test"
			<abc: 1 "bla"def: (2+2) ghi: (3 b)>
			<a: 4> "test"
			<boe>
			1 + [ |a| a ] value: "mmh" 3.
			^ 7 "biep". "bla" '.
	result := parser parse: string.
	result hasReturnExpression should be true.
	result class should = ASTMethod.
	result message class should = ASTKeywordMessageDefinition.
	result temporaries size should = 3.
	result annotations size should = 3.
	result statements size should = 2