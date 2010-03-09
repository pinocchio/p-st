testing
testValues
	| values |
	values := d values.
	values size should = 0.
	
	d at: #bla put: '1'.
	values := d values.
	values size should = 1.
	(values includes: '1') should = true.
	
	d at: #foo put: '2'.
	values := d values.
	values size should = 2.
	(values includes: '1') should = true.
	(values includes: '2') should = true.