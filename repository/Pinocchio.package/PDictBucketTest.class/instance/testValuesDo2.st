tests
testValuesDo2
	| c |
	b addKey: #key1 value: 'value1'.
	b addKey: #key2 value: 'value2'.
	b addKey: #key3 value: 'value3'.
	b removeKey: #key2.
	c := OrderedCollection new.
	b valuesDo: [ :value | c add: value ].
	c size should = 2.
	(c includes: 'value1') should = true.
	(c includes: 'value3') should = true