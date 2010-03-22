tests
testRemoveIfAbsent
	(b removeKey: #v ifAbsent: [ 1 ]) should = 1.
	b addKey: #v value: 'v1'.
	(b removeKey: #v ifAbsent: [ 1 ]) should = 'v1'.