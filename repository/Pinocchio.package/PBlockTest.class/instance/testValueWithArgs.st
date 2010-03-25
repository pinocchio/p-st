tests
testValueWithArgs
	| block |
	block := [ :a | a + 2 ].
	(block value: 3) should be = 5.
	block := [ :a :b | a + b + 2 ].
	(block value: 3 value: 1) should be = 6