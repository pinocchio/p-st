tests
testAtPut
	| o |
	o := Array new: 2.
	(o at: 1 put: 10) should be = 10.
	(o at: 2 put: 100) should be = 100.
	