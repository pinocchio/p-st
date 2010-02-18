running
setUp
	super setUp.
	visitor := PCompiler new.
	scparser := SCParser new.
	parser := scparser expression.