testing
testAdd
	| d value |
	d := Dictionary new.
	1 to: 900 do: [ :idx|
		value := '_', (idx asString), '_'.
		d at: idx put: value.
		(d includes: value) should = true.
		(d at: idx) should = value.
		d size should = idx.
		d keys size should = idx.
		d values size should = idx.
	]