test-source-output
generateTestSourcesFor: methodSelector on: outStream
	self putSeparatorOn: outStream.
	outStream
		nextPutAll: 'NEW_TEST(';
		nextPutAll: 'AutoGenTest_';
		nextPutAll: methodSelector asString;
		nextPutAll: ')';
		lf;
		lf.
	self generateMethodFor: methodSelector on: outStream.	"[ self generateMethodFor: methodSelector on: outStream ] on: Error do: [ :error | 
		self dumpSourceError: error on: outStream 
	]."
	outStream
		lf;
		nextPutAll: '}'