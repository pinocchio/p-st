visiting
visitMethod: aMethod
	<preventExport>
	self visitStatements: aMethod.
	self insertReturn.
	aMethod threaded: (self compileNatively: code asArray).