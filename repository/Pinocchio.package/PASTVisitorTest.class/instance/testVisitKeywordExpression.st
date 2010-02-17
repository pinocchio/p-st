running
testVisitKeywordExpression
	| ast |
	parser := scparser expression.
	ast := self ast: 'true a: 2'.
	ast message class should = PSymbol.
	ast message symbol class should = ByteSymbol.
	ast message symbol asString should = 'a:'.
	ast size = 1.
	ast receiver class should = PInternalVariable.