tests
testMethodFloat
	| parser string result |
	parser := pparser method.
	result := parser parse: 'a
		^ 1.5 '.
	result hasReturnExpression should be true.
	result class should = ASTMethod.
	result message asString should = 'a'.
	result statements last hasReturnExpression should be true.
	result statements first expression class should be: ASTFloat.