tests
testValueIndexDo
	| c |
	c := OrderedCollection new.
	b valueIndexDo: [ :value : index|
		c add: value; add: index.
	].
	c size should = 0.
	
	b addKey: #a value: 'v1'.
	b addKey: #b value: 'v2'.
	b addKey: #c value: 'v3'.
	b valueIndexDo: [ :value : index|
		c add: value; add: index.
	].
	c size should = 6.
	(c includes: 'v1') should = true.
	(c includes: 'v2') should = true.
	(c includes: 'v3') should = true.
	