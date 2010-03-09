testing
testIsEmpty
	d isEmpty should = true.
	d at: #key put: #value.
	d isEmpty should = false.