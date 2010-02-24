testing
testAtPut
	| str |
	str := String fromString: 'aaa'.
	
	str at: 2 put: $b.
	str should = 'aba'.
	

	str := String fromString: 'aba'.
	str at: 3 put: $c.
	str should = 'abc'.