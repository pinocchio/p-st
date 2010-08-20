tests
testKeywordMessageExpression
	| parser string result arg |
	parser := pparser keywordMessageExpression.
	string := PEGStringScanner on: 'abc: 1 def: 2+2 ghi: 3 b '.
	result := parser match: string.
	result class should = ASTMessageExpression.
	result selectorSymbol should = #abc:def:ghi:.
	arg := result arguments first.
	arg class should = ASTNumber.
	arg := result arguments at: 2.
	arg class should = ASTBinaryExpression.
	arg := result arguments at: 3.
	arg class should = ASTUnaryExpression.
	string position should = 25