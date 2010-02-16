tests
testBinaryObjectDescription
	| parser string result |
	parser := scparser binaryObjectDescription.	" unary object description -> unary expression "
	string := PEGStringScanner on: 'abc def ghi '.
	result := parser match: string.
	result class should = ASTUnaryExpression.
	result selector class should = ASTUnarySelector.
	result selector selector asString should = 'ghi'.
	result := result receiver.
	result class should = ASTUnaryExpression.
	result selector class should = ASTUnarySelector.
	result selector selector asString should = 'def'.
	result receiver class should = ASTVariable.
	result receiver name should = 'abc'.
	string position should = 12.	" unary object description -> primary "
	string := PEGStringScanner on: '3'.
	result := parser match: string.
	result class should = ASTNumber.
	result number should = '3'.
	string position should = 1.	" binary expression "
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