visiting
visitReflectionMethod: aMethod
	self visitStatements: aMethod.
	self insertReturn.