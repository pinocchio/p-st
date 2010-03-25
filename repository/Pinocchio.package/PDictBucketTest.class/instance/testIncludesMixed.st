tests
testIncludesMixed
	(b includes: #key) should be: false.
	b addKey: #key value: 'value1'.
	b addKey: 'key' value: 'value2'.
	(b includes: #key) should be: false.
	(b includes: 'key') should be: false.
	(b includes: 'value1') should be: false.
	(b includes: 'value2') should be: true