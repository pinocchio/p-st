testing
testIncludes
	| d |
	d := PDictionary new.
	(d includes: #bla) should = false.
	
	d at: #bla put: '1'.
	(d includes: #bla) should = false.
	(d includes: '1') should = true.
	
	d at: #foo put: '2'.
	(d includes: '2') should = true.
	(d includes: '1') should = true.