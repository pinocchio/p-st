compilation
compileBlock: aBlock
	self pushScope.
	
	self visitStatements: aBlock.
	self insertBlockReturn.
	aBlock threaded: (self compileNatively: code asArray).
	
	self popScope.
	