tests
testLast
	| a |
	a := Array with: 2 with: 1.
	a last should be = 1.
	
	a := Array with: 2 with: 4 with: 1.
	a last should be = 1.