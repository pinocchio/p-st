tests
testIfTrueIfFalse
	(true
		ifTrue: [ 1 ]
		ifFalse: [ 2 ]) should be = 1.
	(false
		ifTrue: [ 1 ]
		ifFalse: [ 2 ]) should be = 2