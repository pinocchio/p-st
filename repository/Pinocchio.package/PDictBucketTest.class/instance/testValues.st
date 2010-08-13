tests
testValues
	| values |
	b addKey: #key value: 'value'.
	values := b values.
	values size should = 1.
	values includes: 'value'.
	b addKey: #key1 value: 'value1'.
	values := b values.
	values size should = 2.
	values includes: 'value'.
	values includes: 'value1'