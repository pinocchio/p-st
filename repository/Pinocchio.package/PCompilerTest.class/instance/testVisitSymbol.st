running
testVisitSymbol
	| symbol result |
	symbol := ASTSymbol new symbol: 'at:put:'.
	result := visitor visit: symbol.
	result should beKindOf: PConstant.
	result constant should = #at:put:.
	symbol := ASTSymbol new symbol: 'notInternalat:put:'.
	result := visitor visit: symbol.
	result should beKindOf: PConstant.
	result constant should = 'notInternalat:put:'