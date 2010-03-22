tests
testIncludesUnique
	(b includes: #key) should = false.
	b addKey: #key value: 'value1'.
	(b includes: #key) should = false.
	(b includes: 'value1') should = true.
	
	b addKey: 'key2' value: 'value2'.
	(b includes: 'key2') should = false.
	(b includes: 'value2') should = true.