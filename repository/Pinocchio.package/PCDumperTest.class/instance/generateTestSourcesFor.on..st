test-source-output
generateTestSourcesFor: methodSelector on: outStream 
	self putSeparatorOn: outStream.
	outStream nextPutAll: 'NEW_TEST(';
		nextPutAll: 'AutoGenTest_';
		nextPutAll: methodSelector asString;
		nextPutAll: ')'; cr; cr.
	self generateMethodFor: methodSelector on: outStream.
	
	"[ self generateMethodFor: methodSelector on: outStream ] on: Error do: [ :error | 
		self dumpSourceError: error on: outStream 
	]."
	outStream cr;
		nextPutAll: '}'