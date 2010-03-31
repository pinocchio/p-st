running
testClosure
	| exp result closure |
	i context: PMethodContext new.
	exp := (PBlock new: 1) params: Array new locals: Array new.
	exp at: 1 put: (PConstant new: 42).
	closure := exp accept: i.
	exp := PSend new: 0.
	exp receiver: (PConstant new: closure).
	exp message: #value.
	result := exp accept: i.
	result should = 42