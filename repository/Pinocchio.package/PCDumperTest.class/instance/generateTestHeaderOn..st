test-source-output
generateTestHeaderOn: outStream
	outStream
		nextPutAll: '// Auto generated Tests from PCDumperTest';
		lf;
		lf;
		nextPutAll: 'Optr Test_Class;';
		lf