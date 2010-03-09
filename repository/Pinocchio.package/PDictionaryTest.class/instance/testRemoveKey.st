testing
testRemoveKey
	d at: #key put: #value.
	d size should = 1.
	
	d removeKey: #key.
	d size should = 0.
	
	d at: #key1 put: #value.
	d at: #key2 put: #value.
	d size should = 2.
	d removeKey: #key1.
	(d includesKey: #key1) should = false.
	(d includesKey: #key2) should = true.
	d size should = 1.