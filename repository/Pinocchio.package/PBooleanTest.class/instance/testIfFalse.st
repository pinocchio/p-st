tests
testIfFalse
	(true ifFalse: [ 1]) should be = nil.
	(false ifFalse: [ 2]) should be = 2.