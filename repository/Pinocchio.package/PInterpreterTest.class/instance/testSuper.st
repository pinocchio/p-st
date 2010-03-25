running
testSuper
	| exp result |
	self preventRun: [ ^ self ].
	exp := PSend new: 0.
	exp message: #testSuper.
	exp receiver: (PConstant new: ChildClassTestClass new).
	result := exp accept: i.
	result should = 100.	" Check a second time to test if the inline cache doens't break it "
	result := exp accept: i.
	result should = 100