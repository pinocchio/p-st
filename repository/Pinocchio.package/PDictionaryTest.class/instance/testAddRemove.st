testing
testAddRemove
	| value |
	d size should = 0.
	
	1 to: 333 do: [ :idx|
		value := '_', (idx asString), '_'.
		d at: idx put: value.
		(d includes: value) should = true.
		(d at: idx) should = value.
		d size should = idx.
		d keys size should = idx.
		d values size should = idx.
	].

	1 to: 333 do: [ :idx|
		value := '_', (idx asString), '_'.
		(d removeKey: idx) should = value.
		(d includes: value) should = false.
		d size should = (333 - idx).
		d keys size should = (333 - idx).
		d values size should = (333 - idx).
	]