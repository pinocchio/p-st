tests
testIsFull
	b := PSetBucket new: 3.
	b isFull should = false.
	b add: #a.
	b add: #b.
	b isFull should = false.
	b add: #c.
	b isFull should = true.
	b remove: #b.
	b isFull should = false