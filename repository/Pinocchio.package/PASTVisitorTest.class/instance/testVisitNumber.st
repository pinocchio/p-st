running
testVisitNumber
	| number result |
	number := ASTNumber new base: '10'; number: '-43'.
	result := visitor visit: number.
	result class should = PConstant.
	result constant class should = PSmallInt.
	result constant int should = -43.