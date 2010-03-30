stepping
defaultStepBlock
	^ [ :receiver :class :aMessage :action | 
		self indent.
		PFile stderr: receiver class name, '@', class name , '>>' , aMessage selector.
		PFile stderr lf.
		self step: action ]