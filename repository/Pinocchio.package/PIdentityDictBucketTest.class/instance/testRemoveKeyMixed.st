tests
testRemoveKeyMixed

	b addKey: #key1 value: 'value1'.
	b bucketSize should = 2.
	b addKey: 'key2' value: 'value2'.
	b bucketSize should = 4.
	
	(b removeKey: 'key1' ifAbsent: [false]) should = false.
	b bucketSize should = 4.
	(b removeKey: #key2 ifAbsent: [false]) should = false.
	b bucketSize should = 4.