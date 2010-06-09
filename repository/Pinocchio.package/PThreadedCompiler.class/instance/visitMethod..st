visiting
visitMethod: aMethod
	self visitCollection: aMethod.
	self insertReturn.
	aMethod threaded: code asArray.