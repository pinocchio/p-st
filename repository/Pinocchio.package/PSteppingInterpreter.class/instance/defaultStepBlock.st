stepping
defaultStepBlock
	^ [ :receiver :class :aMessage :action | self step: action ]