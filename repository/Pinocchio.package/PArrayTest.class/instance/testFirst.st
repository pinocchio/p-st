tests
testFirst
	| a |
	a := Array with: 2 with: 1.
	a first should be = 2.
	(a at: 1) should be = 2.
	
	a := Array with: 2 with: 4 with: 1.
	a first should be = 2.
	(a at: 1) should be = 2.