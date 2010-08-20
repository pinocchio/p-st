tests
testAnnotation
	| parser string result arg |
	" We just allow fully MessageExpressions in our annotations. Semantic checker will catch this (probably :)) "
	parser := pparser annotations.
	string := PEGStringScanner on: '<abc: 1 def: (2 + 3) ghi: (3 b)>'.
	result := parser match: string.
	result size should = 1.
	result := result first.
	result class should = ASTKeywordAnnotation.
	result selectorSymbol should = #abc:def:ghi:.
	arg := result arguments first.
	arg class should = ASTNumber.
	arg := result arguments at: 2.
	arg class should = ASTBinaryExpression.
	arg := result arguments at: 3.
	arg class should = ASTUnaryExpression.
	string atEnd should be true.
	string := PEGStringScanner on: '<abc> '.
	result := parser match: string.
	result size should = 1.
	result := result first.
	result class should = ASTUnaryAnnotation.
	result selector asString should = 'abc'.
	string position should = 6.
	string := PEGStringScanner on: '<temps: 4 annotations: 1 statements: 2>'.
	result := parser match: string.
	result size should = 1.
	result := result first.
	result class should = ASTKeywordAnnotation.
	result selectorSymbol should = #temps:annotations:statements:.
	string atEnd should be true