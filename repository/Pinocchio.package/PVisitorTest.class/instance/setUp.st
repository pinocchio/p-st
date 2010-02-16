running
setUp
	super setUp.
	visitor := PASTVisitor new.
	scparser := SCParser new.
	parser := scparser expression.