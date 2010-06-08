visiting
visitMethod: aMethod
	self visitCollection: aMethod.
	aMethod threaded: code asArray.