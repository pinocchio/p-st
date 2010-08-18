tests
testFloat
	| parser string result |
	parser := scparser float.
	result := parser parse: '0.0'.
	result class should = ASTFloat.
	result number should be: '0.0'.
	
	result := parser parse: '-1.2'.
	result class should = ASTFloat.
	result number should be: '-1.2'.
	
	result := parser parse: '-1.123456789'.
	result class should = ASTFloat.
	result number should be: '-1.123456789'.
	