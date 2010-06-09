visiting
pvisitMethod: aMethod
	<renameExport: #visitMethod: >
	| array |
	self visitStatements: aMethod.
	self insertReturn.
	code inspect.
	array := code asArray.
	array inspect.
	aMethod threaded: (self compileNatively: array).