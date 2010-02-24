testing
testIfNotNil
	(nil ifNotNil: [ 1 ]) should = nil.
	(Object ifNotNil: [ 1 ]) should = 1.