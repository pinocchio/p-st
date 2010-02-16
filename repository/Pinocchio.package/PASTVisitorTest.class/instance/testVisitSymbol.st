running
testVisitSymbol
	| symbol result |
	symbol := ASTSymbol new symbol: 'at:put:'.
	result := visitor visit: symbol.
	result class should = PConstant.
	result constant class should = PInternalSymbol.
	result constant symbol should = 'at:put:'.
	
	symbol := ASTSymbol new symbol: 'notInternalat:put:'.
	result := visitor visit: symbol.
	result class should = PConstant.
	result constant class should = PSymbol.
	result constant symbol should = 'notInternalat:put:'.