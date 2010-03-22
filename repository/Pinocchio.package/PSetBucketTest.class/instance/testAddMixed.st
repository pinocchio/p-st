tests
testAddMixed
	
	b bucketSize should = 0.
	b add: #key.
	b bucketSize should = 1.
	b add: #key.	
	b bucketSize should = 1.
	b add: 'key'.
	b bucketSize should = 1.
	b add: 'key2'.
	b bucketSize should = 2.