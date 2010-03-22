tests
testAddMixed
	b bucketSize should = 0.
	b addKey: 'key' value: 'value1'. 
	b bucketSize should = 2.
	b addKey: 'key' value: 'value2'. 
	b bucketSize should = 2.
	b addKey: #key value: 'value3'. 
	b bucketSize should = 4.
	
	b addKey: #key1 value: 'value3'. 
	b bucketSize should = 6.
	b addKey: #key1 value: 'value4'. 
	b bucketSize should = 6.
	b addKey: 'key1' value: 'value4'. 
	b bucketSize should = 8.