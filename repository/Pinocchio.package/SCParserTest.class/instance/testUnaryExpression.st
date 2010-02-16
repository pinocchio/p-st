tests
testUnaryExpression
	| parser string result |
	parser := scparser unaryExpression.
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
	string position should = 12.
	string := PEGStringScanner on: 'abc'.
	(parser match: string) should be isNil