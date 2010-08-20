running
testVisitAssignmentExpression
	| result constant |
	visitor scope declare: (ASTVariable new name: 'a').
	parser := pparser subExpression.
	result := self ast: 'a:= 13.'.
	result class should = PAssign.
	result variable class should = PVariable.
	result variable name should = #a.
	result expression class should = PConstant.
	result expression constant = 13