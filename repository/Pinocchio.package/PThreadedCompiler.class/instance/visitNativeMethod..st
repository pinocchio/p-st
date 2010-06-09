visiting
visitNativeMethod: aMethod
	self visitStatements: aMethod.
	self insertReturn.