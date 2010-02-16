running
testVisitAssignementExpression
	| result |
	visitor scope declare: (ASTVariable new name: 'a').
	parser := scparser subExpression.
	result := self ast: ' a:= 13.'.
	result class should = PAssign.
	result variable class should = PLocalVariable.
	result variable name should = 'a'.
	result expression class should = PConstant.
	result expression constant class should = PSmallInt.
	result expression constant int should = 13.