tests
testSmallInt
	| parser string result |
	parser := scparser number.
	result := parser parse: '0'.
	result class should = ASTNumber.
	result number should be: '0'.
	result base should be: '10'.
	
	result := parser parse: '1234567890'.
	result class should = ASTNumber.
	result number should be: 1234567890.
	result base should be: '10'.
	
	result := parser parse: '-1'.
	result class should = ASTNumber.
	result number should be: -1.
	result base should be: '10'.
	
	result := parser parse: '-1234567890'.
	result class should = ASTNumber.
	result number should be: -1234567890.
	result base should be: '10'.