tests
testNestedBlocks
	| block b |
	
	block := [ :a| 
		b := [:c| a + c].
		b value: 2.
	].

	(block value: 3) should be = 5.