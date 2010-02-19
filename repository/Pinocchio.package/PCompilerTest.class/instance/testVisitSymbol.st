running
testVisitSymbol
	| symbol result constant |
	symbol := ASTSymbol new symbol: 'at:put:'.
	result := visitor visit: symbol.
	result class should = PConstant.
	constant := result constant asPObject.
	constant class should = PInternalSymbol.
	constant symbol should = #at:put:.
	
	symbol := ASTSymbol new symbol: 'notInternalat:put:'.
	result := visitor visit: symbol.
	result class should = PConstant.
	constant := result constant asPObject.
	constant class should = PSymbol.
	constant symbol should = 'notInternalat:put:'.