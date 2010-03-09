tests
testRemoveIfAbsent
	(b remove: #v ifAbsent: [ 1 ]) should = 1.
	b add: #v.
	(b remove: #v ifAbsent: [ 1 ]) should = #v.