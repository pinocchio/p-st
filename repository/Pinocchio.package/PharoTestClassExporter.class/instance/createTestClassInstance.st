exporting
createTestClassInstance
	stream nextPutAll: '    ', testCaseClass uid,' =';
		nextPutAll: '(Type_Class)'; nextPutAll: self pclass uid; nextPutAll: ';'; lf;
		nextPutAll: '    ', testCaseInstance uid,' =';
		nextPutAll: '(Object)new_AST_Constant((Object)instantiate((Type_Class)', testCaseClass uid,'));'; lf.