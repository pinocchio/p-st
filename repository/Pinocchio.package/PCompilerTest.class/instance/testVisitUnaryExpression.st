running
testVisitUnaryExpression
	| ast |
	parser := scparser unaryExpression.
	ast := self ast: 'true not'.
	ast message asSymbol should = #not.
	ast size = 0.
	ast receiver class should = PInternalVariable.