exporting
export: pclass
	pclass should be isKindOf: PClass.
	self clear.
	self pclass: pclass.
	self sclass: pclass sclass.
	
	FileDirectory default assureExistenceOfPath: self sourcePath, '/test/lib/test'. 
	
	self createCFile.
	self createHFile.
	