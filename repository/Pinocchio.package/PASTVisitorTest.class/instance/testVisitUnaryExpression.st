running
testVisitUnaryExpression
	| ast |
	parser := scparser unaryExpression.
	ast := self ast: 'true not'.
	ast message class should = PInternalSymbol.
	ast message symbol class should = ByteSymbol.
	ast message symbol asString should = 'not'.
	ast arguments class should = PArray.
	ast receiver class should = PInternalVariable.