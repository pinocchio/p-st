tests
testUnaryAndBinaryPrecedence
	| parser ast |
	parser := scparser statements.
	
	ast := (parser match: (PEGStringScanner on: '2 fib + 3 ')) first.
	
	ast class should = ASTBinaryExpression.
	ast receiver class should = ASTUnaryExpression.
	ast receiver receiver class should = ASTNumber.
	ast receiver receiver number should = '2'.
	ast receiver selector asString should = 'fib'.
	
	ast selector asString should = '+'.
	
	ast argument class should = ASTNumber.
	ast argument number should = '3'.
	
	