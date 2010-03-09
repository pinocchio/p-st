testing
testSize
	| d |
	d := PDictionary new.
	d size should = 0.
	
	d at: 'a' put: 1.
	d size should = 1.
	
	d at: 'z' put: 28.
	d size should = 2.