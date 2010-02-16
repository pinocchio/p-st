initialize-release
initialize
	super initialize.
	scparser := SCParser new.
	cdumper := PClassCDumper new.
	visitor := PASTVisitor new.
	testCaseClass := PInternalVariable new.
	testCaseInstance := PInternalVariable new.
	self name: 'AutoGenTest'.
	self clear.