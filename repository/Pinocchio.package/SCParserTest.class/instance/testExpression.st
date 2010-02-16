tests
testExpression
	| parser string result |
	parser := scparser expression.
	string := PEGStringScanner on: 'a:= b :=    c:= 2+4 abc: 1 def: 2+2 ghi: 3 b '.
	result := parser match: string.
	result class should = ASTAssignmentExpression.
	result variable class should = ASTVariable.
	result variable name should = 'a'.
	result := result expression.
	result class should = ASTAssignmentExpression.
	result variable class should = ASTVariable.
	result variable name should = 'b'.
	result := result expression.
	result class should = ASTAssignmentExpression.
	result variable class should = ASTVariable.
	result variable name should = 'c'.
	result expression class should = ASTMessageExpression