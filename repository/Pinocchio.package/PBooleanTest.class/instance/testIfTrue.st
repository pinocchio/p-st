tests
testIfTrue
	(true
		ifTrue: [ 1 ]) should be = 1.
	(false
		ifTrue: [ 2 ]) should be = nil