as yet unclassified
defaultStepBlock
	^ [ :receiver :class :aMessage :action | 
		tally := tally + 1.
		action value ]