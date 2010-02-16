tests
testKeywordExpression
	| parser string result arg |
	parser := scparser keywordExpression.
	string := PEGStringScanner on: '2+4 abc: 1 def: 2+2 ghi: 3 b '.
	result := parser match: string.
	result class should = ASTMessageExpression.
	result keywords asArray should = ((Array new: 3)
	at: 1 put: 'abc';
	at: 2 put: 'def';
	at: 3 put: 'ghi';
	yourself).
	result selector class should = ASTKeywordSelector.
	result selector printString should = 'abc:def:ghi:'.
	arg := result arguments first.
	arg class should = ASTNumber.
	arg := result arguments at: 2.
	arg class should = ASTBinaryExpression.
	arg := result arguments at: 3.
	arg class should = ASTUnaryExpression.
	result receiver class should = ASTBinaryExpression.
	string position should = 29