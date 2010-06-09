visiting
visitMethod: aMethod
	self visitStatements: aMethod.
	self insertReturn.
	aMethod threaded: code asArray.