testing
testAtPut
	| d r |
	d := Dictionary new.
	r := d at: 'a' put: 10.
	r should = 10.
	r := d at: 4 put: 20.
	r should = 20.
	r := d at: true put: 30.
	r should = 30.
	
	r := d at: 'a'.
	r should = 10.
	r := d at: 4.
	r should = 20.
	r := d at: true.
	r should = 30.