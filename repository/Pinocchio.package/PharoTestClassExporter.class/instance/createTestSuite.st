exporting
createTestSuite
	self separator.
	self createTestSetup.
	stream
		nextPutAll: 'TEST_SUITE(';
		nextPutAll: self name , ',';
		lf;
		nextPutAll: '{';
		lf.
	self createTestClassInstance.
	stream lf.
	selectorList
		do:
			[ :selector | 
			stream
				nextPutAll: '    ' , self name , '_setUp();';
				lf;
				nextPutAll: '    RUN_TEST(';
				nextPutAll: self name;
				nextPutAll: '_';
				nextPutAll: selector asString;
				nextPutAll: ');';
				lf ].
	stream nextPutAll: '})'