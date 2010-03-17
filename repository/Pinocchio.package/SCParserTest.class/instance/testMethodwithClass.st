tests
testMethodwithClass
	| parser string result |
	parser := scparser method.
	string := 'withA: a
		IO.File stdout writeAll: a
	'.
	result := parser parse: string.
	result hasReturnExpression should = false.
	result class should = ASTMethod.
	result message asString should = 'withA:'.
	"self halt."