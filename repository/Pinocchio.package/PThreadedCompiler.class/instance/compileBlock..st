compilation
compileBlock: aBlock
	self pushScope.
	
	self visitStatements: aBlock.
	self insertBlockReturn: aBlock.
	
	aBlock threaded: (self compileNatively: (PThreadedCode newFrom: code)).
	self popScope.