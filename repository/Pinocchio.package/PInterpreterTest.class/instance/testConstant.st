running
testConstant
	| exp result |
	exp := PConstant new: 2.
	result := exp accept: i.
	result should = 2