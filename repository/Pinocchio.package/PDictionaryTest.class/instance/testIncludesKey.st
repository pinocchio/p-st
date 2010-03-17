testing
testIncludesKey
	| buckets |
	(d includesKey: #bla) should = false.
	
	d at: #bla put: 'bla'.
	(d includesKey: #foo) should = false.
	(d includesKey: #bla) should = true.
	
	d at: #foo put: 'foo'.
	(d includesKey: #foo) should = true.
	(d includesKey: #bla) should = true.