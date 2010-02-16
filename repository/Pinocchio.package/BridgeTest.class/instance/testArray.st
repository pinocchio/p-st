test-basics
testArray
	| o |
	o := Array new: 2.
	self assert: (o at: 1 put: 10) = 10.
	self assert: (o at: 2 put: 100) = 100.
	self assert: (o at: 1) = 10.
	self assert: (o at: 2) = 100.