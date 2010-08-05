tests
testIsEmpty
	b isEmpty should = true.
	b addKey: #v value: 'v1'.
	b isEmpty should = false.
	b removeKey: #v.
	b isEmpty should = true