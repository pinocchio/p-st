testing
testAddRemove
	| value |
	d size should = 0.
	1 to: 100 do:
			[ :idx | 
			value := '_' , idx asString , '_'.
			d at: idx put: value.
			(d includes: value) should be true.
			(d at: idx) should be: value.
			d size should = idx.
			d keys size should = idx.
			d values size should = idx ].
	1 to: 100 do:
			[ :idx | 
			value := '_' , idx asString , '_'.
			(d removeKey: idx) should be: value.
			(d includes: value) should be false.
			d size should = (100 - idx).
			d keys size should = (100 - idx).
			d values size should = (100 - idx) ]