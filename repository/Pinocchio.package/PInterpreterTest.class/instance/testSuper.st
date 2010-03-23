running
testSuper
	| exp result |
	self preventRun: [ ^ self ].
	exp := PSuper new: 0.
	exp message: #test.
	exp receiver: (SuperClassTestClass).
	result := exp accept: i.
	result should = 10.
	" Check a second time to test if the inline cache doens't break it "
	result := exp accept: i.
	result should = 10