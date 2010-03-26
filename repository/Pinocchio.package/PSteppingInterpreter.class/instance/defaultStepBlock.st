stepping
defaultStepBlock
	^ [ :receiver :aMessage :action | ^ self step: action ]