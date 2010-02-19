running
setUp
	super setUp.
	visitor := PCompiler new.
	visitor world: PharoASTExtractor new.
	scparser := SCParser new.
	parser := scparser expression.