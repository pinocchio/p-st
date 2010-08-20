running
testVisitSuperExpression
	| ast |
	parser := pparser expression.
	ast := self ast: 'super a: 2'.
	ast class should = PSuper.
	ast message asSymbol = #a:.
	ast size = 1