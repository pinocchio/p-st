test-source-output
generateTestSuite: selectorList on: outStream
	self putSeparatorOn: outStream.
	outStream nextPutAll: 'TEST_SUITE(';
		nextPutAll: 'AutoGenTest,'; lf;
		nextPutAll: '{'; lf.
	selectorList do: [ :selector|
		outStream nextPutAll: '    RUN_TEST(';
			nextPutAll: 'AutoGenTest_';
			nextPutAll: selector asString ;
			nextPutAll: ');'; lf.
	].
	outStream nextPutAll: '})'