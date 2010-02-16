running
testVisitSuperExpression
	| ast |
	parser := scparser expression.
	ast := self ast: 'super a: 2'.
	ast class should = PSuper.
	ast message class should = PSymbol.
	ast message symbol class should = ByteSymbol.
	ast message symbol asString = 'a:'.
	ast arguments class should = PArray.