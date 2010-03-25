testing
testAtPutUnique
	| r |
	r := d at: 'a' put: 10.
	d size should = 1.
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
	r should = 30