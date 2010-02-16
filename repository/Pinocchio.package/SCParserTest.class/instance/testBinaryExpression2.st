tests
testBinaryExpression2
	| string result parser |
	parser := scparser binaryObjectDescription.
	string := PEGStringScanner on: 'a <<<<<<<< ghi <= c <= d '.
	result := parser match: string.
	result class should = ASTBinaryExpression.
	result selector printString should = '<='.
	result argument class should = ASTVariable.
	result argument name should = 'd'.
	result := result receiver.
	result class should = ASTBinaryExpression.
	result selector printString should = '<='.
	result argument class should = ASTVariable.
	result argument name should = 'c'.
	result := result receiver.
	result class should = ASTBinaryExpression.
	result selector printString should = '<<<<<<<<'.
	result receiver class should = ASTVariable.
	result receiver name should = 'a'.
	result argument class should = ASTVariable.
	result argument name should = 'ghi'.
	string position should = 24