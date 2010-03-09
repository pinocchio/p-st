tests
testDo
	| c |
	c := OrderedCollection new.
	b do: [ :each| c add: each. ].
	c size should = 0.
	
	b add: #a.
	b add: #b.
	b add: #c.
	
	b do: [ :each| c add: each. ].
	c size should = 3.