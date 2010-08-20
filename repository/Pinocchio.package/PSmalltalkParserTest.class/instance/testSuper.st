tests
testSuper
	| parser string message return |
	parser := pparser messageExpression.
	string := PEGStringScanner on: 'super do: this and: that'.
	message := parser match: string.
	message receiver class should = ASTSuper.
	parser := pparser return.
	string := PEGStringScanner on: '^ super do: this and: that'.
	return := parser match: string.
	return class should = ASTReturnExpression.
	return expression receiver class should = ASTSuper