running
testSend
	| exp result |
	self preventRun: [ ^ self ].
	exp := PSend new: 1.
	exp message: #+.
	exp receiver: (PConstant new: 2).
	exp at: 1 put: (PConstant new: 3).
	result := exp accept: i.
	result should = 5