tests
testAddKeyValueMixed
	b bucketSize should be: 0.
	b addKey: 'key' value: 'value1'.
	b bucketSize should be: 2.
	b addKey: 'key' value: 'value2'.
	b bucketSize should be: 2.
	b addKey: #key value: 'value3'.
	b bucketSize should be: 2.
	b addKey: #key1 value: 'value3'.
	b bucketSize should be: 4.
	b addKey: #key1 value: 'value4'.
	b bucketSize should be: 4.
	b addKey: 'key1' value: 'value4'.
	b bucketSize should be: 4