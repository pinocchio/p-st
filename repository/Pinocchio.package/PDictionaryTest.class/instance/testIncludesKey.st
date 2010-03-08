testing
testIncludesKey
	| d |
	d := Dictionary new.
	(d includesKey: #bla) should = false.
	
	d at: #bla put: 'bla'.
	(d includesKey: #bla) should = true.
	
	d at: #foo put: 'foo'.
	(d includesKey: #foo) should = true.