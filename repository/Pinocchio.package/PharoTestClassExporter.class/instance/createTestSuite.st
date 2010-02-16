exporting
createTestSuite
	self separator.
	
	self createTestSetup.
	
	stream nextPutAll: 'TEST_SUITE(';
		nextPutAll: self name,','; cr;
		nextPutAll: '{'; cr.
	
	self createTestClassInstance.
	stream cr.
	
	selectorList do: [ :selector|
		stream nextPutAll: '    ',self name, '_setUp();'; cr;
			nextPutAll: '    RUN_TEST(';
			nextPutAll: self name;
			nextPutAll: '_';
			nextPutAll: selector asString ;
			nextPutAll: ');'; cr.
	].
	stream nextPutAll: '})'