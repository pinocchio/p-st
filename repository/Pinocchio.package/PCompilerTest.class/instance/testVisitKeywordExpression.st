running
testVisitKeywordExpression
	| ast |
	parser := scparser expression.
	ast := self ast: 'true a: 2'.
	ast message asSymbol should = #a:.
	ast size = 1.
	ast receiver should beKindOf: PVariable.