running
testVisitSymbol
	| symbol result constant |
	symbol := ASTSymbol new symbol: 'at:put:'.
	result := visitor visit: symbol.
	result should beKindOf: PConstant.
	constant := result constant asPObject.
	constant should beKindOf: PSymbol.
	constant asSymbol should = #at:put:.
	
	symbol := ASTSymbol new symbol: 'notInternalat:put:'.
	result := visitor visit: symbol.
	result should beKindOf: PConstant.
	constant := result constant asPObject.
	constant should beKindOf: PSymbol.
	constant asSymbol should = 'notInternalat:put:'.