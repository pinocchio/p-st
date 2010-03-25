running
testVisitNumber
	| number result |
	number := (ASTNumber new)
		base: '10';
		number: '-43'.
	result := visitor visit: number.
	result should beKindOf: PConstant.
	result constant should = -43