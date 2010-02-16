test-basics
testDictionaryAtifAbsent
	| d result x |
	d := Dictionary new.
	result := d at: #a ifAbsentPut: [ 3 ].
	result should = 3.
	result := d at: #a ifAbsentPut: [ 5 ].
	result should = 3.
	result := d at: #b ifAbsent: [ 10 ].
	result should = 10.
	result := d at: #b ifAbsent: [ 20 ].
	result should = 20.
	" test if blocks only get executed once. "
	x := 1.
	d at: #c ifAbsent: [ x := x + 1 ].
	x should = 2.
	d at: #c ifAbsentPut: [ x := x + 1 ].
	x should = 3.
	(d at: #c) should = 3.
	
	" test if block gets ignored when wasn't absent '"
	
	d at: #c ifAbsent: [ x := x + 1 ].
	x should = 3.
	d at: #c ifAbsentPut: [ x := x + 1 ].
	x should = 3.
	(d at: #c) should = 3