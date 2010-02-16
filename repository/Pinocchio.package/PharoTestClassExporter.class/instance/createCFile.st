exporting
createCFile
	stream := self createStream: ('test/lib/test/', self name, '.c').
	
	self createHeader.
	self createTestCases.
	self createTestSuite.
	
	stream close.
	