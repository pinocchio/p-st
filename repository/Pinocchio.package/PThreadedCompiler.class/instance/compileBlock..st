compilation
compileBlock: aBlock
	self pushScope.
	
	self visitStatements: aBlock.
	self insertBlockReturn.
	
	aBlock threaded: code asArray.
	
	self popScope.
	