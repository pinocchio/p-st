running
testClassReference
	| exp result |
	self preventRun: [ ^ self ].
	exp := PClassReference named: 'test'.
	exp ensurePinocchioClass: ChildClassTestClass.
	result := exp accept: i.
	result should = ChildClassTestClass