testing
testIfNil
	(nil ifNil: [ 1 ]) should = 1.
	(Object ifNil: [ 1 ]) should = Object