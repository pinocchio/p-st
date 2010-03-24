initialize-release
initialize
	super initialize.
	stepMode := false.
	stepBlock := self class defaultStepBlock.