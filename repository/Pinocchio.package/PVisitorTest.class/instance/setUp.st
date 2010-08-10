running
setUp
	super setUp.
	visitor := PCompiler new.
	visitor world: PVisitorTestWorld new.
	scparser := SCParser new.
	parser := scparser expression.