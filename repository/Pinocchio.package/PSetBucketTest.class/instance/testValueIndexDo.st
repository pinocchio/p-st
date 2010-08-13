tests
testValueIndexDo
	| c |
	c := OrderedCollection new.
	b
		valueIndexDo:
			[ :value :index | 
			c
				add: value;
				add: index ].
	c size should = 0.
	b add: #a.
	b add: #b.
	b add: #c.
	b
		valueIndexDo:
			[ :value :index | 
			c
				add: value;
				add: index ].
	c size should = 6