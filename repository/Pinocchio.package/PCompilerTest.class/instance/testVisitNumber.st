running
testVisitNumber
	| number result constant |
	number := ASTNumber new base: '10'; number: '-43'.
	result := visitor visit: number.
	result class should = PConstant.
	constant := result constant asPObject.
	constant class should = PSmallInt.
	constant int should = -43.