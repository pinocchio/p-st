compilation
compileBlock: aBlock
	self pushScope.
	
	self visitStatements: aBlock.
	aBlock threaded: code asArray.
	
	self popScope.
	