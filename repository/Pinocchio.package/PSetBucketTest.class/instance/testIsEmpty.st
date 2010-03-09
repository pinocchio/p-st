tests
testIsEmpty
	b isEmpty should = true.
	b add: #v.
	b isEmpty should = false.
	b remove: #v.
	b isEmpty should = true.