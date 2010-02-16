tests
testBinaryExpression3
	| string result parser arg |
	parser := scparser binaryObjectDescription.
	string := PEGStringScanner on: 'a <<<<<<<< ghi <= (c <= d) '.
	result := parser match: string.
	result class should = ASTBinaryExpression.
	result selector printString should = '<='.
	arg := result argument.
	arg class should = ASTBinaryExpression.
	arg argument class should = ASTVariable.
	arg argument name should = 'd'.
	arg receiver class should = ASTVariable.
	arg receiver name should = 'c'.
	result := result receiver.
	result class should = ASTBinaryExpression.
	result selector printString should = '<<<<<<<<'.
	result receiver class should = ASTVariable.
	result receiver name should = 'a'.
	result argument class should = ASTVariable.
	result argument name should = 'ghi'.
	string position should = 26