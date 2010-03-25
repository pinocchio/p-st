tests
testValuesDo
	| c |
	b addKey: #key value: 'value'.
	c := OrderedCollection new.
	b valuesDo: [ :value | c add: value ].
	c size should = 1.
	(c includes: 'value') should = true