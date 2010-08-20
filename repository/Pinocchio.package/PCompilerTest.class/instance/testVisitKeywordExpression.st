running
testVisitKeywordExpression
	| ast |
	parser := pparser expression.
	ast := self ast: 'true a: 2'.
	ast message asSymbol should = #a:.
	ast size = 1.
	ast receiver should beKindOf: PConstant