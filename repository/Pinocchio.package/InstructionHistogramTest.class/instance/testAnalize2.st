as yet unclassified
testAnalize2
	| array histo |
	array := self createFunctionPointers: 2.
	histogram analize: array.
	histogram size should be = 2.
	histogram count should be = 0.
	
	histo := histogram at: 1.
	histo size should be = 1.
	histo count should be = 1.
	
	histo := histo at: 2.
	histo size should be = 0.
	histo count should be = 1.
	
	histo := histogram at: 2.
	histo size should be = 0.
	histo count should be = 1.