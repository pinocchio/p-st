running
testClassReference
	| exp result |
	exp := PClassReference named: 'test'.
	exp ensurePinocchioClass: ChildClassTestClass.
	result := exp accept: i.
	result should = ChildClassTestClass