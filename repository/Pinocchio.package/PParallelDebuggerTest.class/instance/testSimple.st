testing
testSimple

	self warn: 'Test1'.
	PParallelDebugger interpret:
		(Array
			with: [true]
			with: [true] ).
	self warn: 'Test2'.
	PParallelDebugger interpret:
		(Array
			with: [false]
			with: [false] ).
	self warn: 'Test3'.
	PParallelDebugger interpret:
		(Array
			with: [1]
			with: [1] ).
	self warn: 'Test4'.
	PParallelDebugger interpret:
		(Array
			with: [1+2]
			with: [1+2] ).
	self warn: 'Test5'.
	PParallelDebugger interpret:
		(Array
			with: [1+2+3]
			with: [1+2+3]
			with: [1+2+3] ).