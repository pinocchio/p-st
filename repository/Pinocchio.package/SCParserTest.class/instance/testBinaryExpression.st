tests
testBinaryExpression
	| parser string result |
	parser := scparser binaryObjectDescription.
	string := PEGStringScanner on: 'abc + ghi '.
	result := parser match: string.
	result class should = ASTBinaryExpression.
	result selector printString should = '+'.
	result receiver class should = ASTVariable.
	result receiver name should = 'abc'.
	result argument class should = ASTVariable.
	result argument name should = 'ghi'.
	string position should = 9.	" becomes ((abc + ghi) * c) "
	string := PEGStringScanner on: 'abc + ghi * c '.
	result := parser match: string.
	result class should = ASTBinaryExpression.
	result selector printString should = '*'.
	result argument class should = ASTVariable.
	result argument name should = 'c'.
	result := result receiver.
	result class should = ASTBinaryExpression.
	result selector printString should = '+'.
	result receiver class should = ASTVariable.
	result receiver name should = 'abc'.
	result argument class should = ASTVariable.
	result argument name should = 'ghi'.
	string position should = 13