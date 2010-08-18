tests
testUnaryObjectDescription
	| parser string result |
	parser := scparser unaryObjectDescription.	" unary expression "
	string := PEGStringScanner on: 'abc def ghi '.
	result := parser match: string.
	result class should = ASTUnaryExpression.
	result selector class should = ASTUnarySelector.
	result selector selector printString should = 'ghi'.
	result := result receiver.
	result class should = ASTUnaryExpression.
	result selector class should = ASTUnarySelector.
	result selector selector printString should = 'def'.
	result receiver class should = ASTVariable.
	result receiver name should = 'abc'.
	string position should = 12.	" primary "
	string := PEGStringScanner on: '3'.
	result := parser match: string.
	result class should = ASTNumber.
	result number should = '3'.
	string position should = 1