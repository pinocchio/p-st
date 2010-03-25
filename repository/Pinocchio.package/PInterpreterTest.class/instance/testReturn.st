running
testReturn
	| exp result |
	self preventRun: [ ^ self ].
	exp := PSend new: 0.
	exp message: #returnTest.
	exp receiver: (PConstant new: self).
	result := exp accept: i.
	result should = 10.	" Check a second time to test if the inline cache doens't break it "
	result := exp accept: i.
	result should = 10