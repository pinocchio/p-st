tests
testIsEmpy
	b isEmpty should = true.
	b addKey: #key value: 'value'.
	b isEmpty should = false. 