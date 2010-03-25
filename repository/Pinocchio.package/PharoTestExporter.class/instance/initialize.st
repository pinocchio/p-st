initialize-release
initialize
	super initialize.
	restrictionSet := PSet new.
	scparser := SCParser new.
	cdumper := PClassCDumper new.
	visitor := PCompiler new.
	testCaseClass := PInternalVariable new.
	testCaseInstance := PInternalVariable new.
	self name: 'AutoGenTest'.
	self clear