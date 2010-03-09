tests
testRemove
	b bucketSize should = 0.
	b add: #key1.
	b add: #key2.
	b add: #key3.
	b bucketSize should = 3.
	b remove: #key2.
	b bucketSize should = 2.
	b remove: #key1.
	b bucketSize should = 1.
	b remove: #key3.
	b bucketSize should = 0.