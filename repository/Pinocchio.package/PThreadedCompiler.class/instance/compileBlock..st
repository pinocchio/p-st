compilation
compileBlock: aBlock
	self pushScope.
	
	self visitCollection: aBlock.
	aBlock threaded: code asArray.
	
	self popScope.
	