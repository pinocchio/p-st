running
testVisitNumber
	| number result constant |
	number := ASTNumber new base: '10'; number: '-43'.
	result := visitor visit: number.
	result should beKindOf: PConstant.
	constant := result constant asPObject.
	constant should beKindOf: PSmallInt.
	constant should = -43.