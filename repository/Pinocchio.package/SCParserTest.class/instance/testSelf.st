tests
testSelf
	| parser string message return |
	parser := scparser messageExpression.
	
	string := PEGStringScanner on: 'self do: this and: that'.
 	message := parser match: string.
	message receiver class should = ASTSelf.
	
	parser := scparser return.
	string := PEGStringScanner on: '^ self do: this and: that'.
 	return := parser match: string.
	return class should = ASTReturnExpression.
	return expression receiver class should = ASTSelf.