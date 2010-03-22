tests
testRemoveKeyMixed

	b addKey: #key1 value: 'value1'.
	b bucketSize should = 2.
	b addKey: 'key2' value: 'value2'.
	b bucketSize should = 4.
	
	(b removeKey: 'key1') should = 'value1'.
	b bucketSize should = 2.
	(b removeKey: #key2) should = 'value2'.
	b isEmpty should = true.