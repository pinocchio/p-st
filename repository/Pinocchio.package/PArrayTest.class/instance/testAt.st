tests
testAt
	| o |
	o := Array new: 2.
	(o at: 1) should be = nil.
	(o at: 2) should be = nil.
	"TODO check for fail
	o at: 3
	"
	o at: 1 put: 3.
	(o at: 1) should be = 3.
	(o at: 2) should be = nil.
	
	o at: 1 put: 2.
	(o at: 1) should be = 2.
	(o at: 2) should be = nil.
	
	o at: 2 put: 5.
	(o at: 1) should be = 2.
	(o at: 2) should be = 5.
	
	