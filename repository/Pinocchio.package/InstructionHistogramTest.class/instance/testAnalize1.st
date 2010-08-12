as yet unclassified
testAnalize1
	| array histo |
	array := self createFunctionPointers: 1.
	histogram analize: array.
	histogram size should be = 1.
	histogram count should be = 0.
	
	histo := histogram at: 1.
	histo size should be = 0.
	histo count should be = 1.