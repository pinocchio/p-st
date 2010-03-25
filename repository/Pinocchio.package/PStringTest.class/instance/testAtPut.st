testing
testAtPut
	| str |
	str := 'aaa' copy.
	str at: 2 put: $b.
	str should = 'aba'.
	str at: 3 put: $c.
	str should = 'abc'