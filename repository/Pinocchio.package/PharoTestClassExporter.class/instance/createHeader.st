exporting
createHeader
	self include: 'test/lib/test/', self name, '.h'.
	stream cr;
		nextPutAll: '// Auto generated Tests from '; 
		nextPutAll: self name; cr; cr;
		nextPutAll: '// Test Object to put test methods into '; cr;
		nextPutAll: 'Type_Class ', testCaseClass uid,';'; cr;
		nextPutAll: 'Object ', testCaseInstance uid, ';'; cr;
		nextPutAll: '// Test Method symbol '; cr;
		nextPutAll: 'Type_Symbol ', self name, '_SMB_runTestCase;'; cr.