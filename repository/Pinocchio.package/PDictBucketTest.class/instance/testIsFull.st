tests
testIsFull
	b := PDictBucket new: 4.
	b isFull should = false.
	b addKey: #key value: 'value'.
	b isFull should = false. 
	b atKey: #key put: 'value2'.
	b isFull should = false. 
	b addKey: #key1 value: 'value'.
	b isFull should = true. 