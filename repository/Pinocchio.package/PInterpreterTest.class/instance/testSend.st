running
testSend
	| exp result |
	exp := PSend new: 1.
	exp message: #+.
	exp receiver: (PConstant new: 2).
	exp at: 1 put: (PConstant new: 3).
	result := exp accept: i.
	result should = 5.	" Check a second time to test if the inline cache doens't break it "
	result := exp accept: i.
	result should = 5