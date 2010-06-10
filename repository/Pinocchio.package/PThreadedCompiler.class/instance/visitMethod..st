visiting
visitMethod: aMethod
	self visitStatements: aMethod.
	self insertReturn.
	aMethod threaded: (self compileNatively: code asArray).