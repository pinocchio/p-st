testing
testIsEmpty
	d isEmpty should = true.
	d at: #key put: #value.
	d isEmpty should = false.
	d at: #key put: #value2.
	d isEmpty should = false.
	d removeKey: #key.
	d isEmpty should = true