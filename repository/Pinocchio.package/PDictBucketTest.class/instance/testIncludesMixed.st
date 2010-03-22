tests
testIncludesMixed
	(b includes: #key) should = false.
	b addKey: #key value: 'value1'.
	b addKey: 'key' value: 'value2'.
	(b includes: #key) should = false.
	(b includes: 'key') should = false.
	(b includes: 'value1') should = false.
	(b includes: 'value2') should = true.
	