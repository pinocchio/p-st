test-source-output
dumpSourceError: error on: outStream.
	outStream nextPutAll: 'assert1(0, "Smalltalk Parsing failed: ';
		nextPutAll: error asString cEscaped;
		nextPutAll: '");'; cr;
		nextPutAll: '/*'; cr;
		nextPutAll: error signalerContext shortStack;
		nextPutAll: '*/'; cr.
