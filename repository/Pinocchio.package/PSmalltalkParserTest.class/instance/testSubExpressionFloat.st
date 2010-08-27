tests
testSubExpressionFloat
	| parser string result |
	parser := pparser subExpression.
	result := parser parse: '1.5.'.
	result class should be: ASTFloat.