exporting
createHeader
	self include: 'test/lib/test/' , self name , '.h'.
	stream
		lf;
		nextPutAll: '// Auto generated Tests from ';
		nextPutAll: self name;
		lf;
		lf;
		nextPutAll: '// Test Object to put test methods into ';
		lf;
		nextPutAll: 'Type_Class ' , testCaseClass uid , ';';
		lf;
		nextPutAll: 'Object ' , testCaseInstance uid , ';';
		lf;
		nextPutAll: '// Test Method symbol ';
		lf;
		nextPutAll: 'Type_Symbol ' , self name , '_SMB_runTestCase;';
		lf