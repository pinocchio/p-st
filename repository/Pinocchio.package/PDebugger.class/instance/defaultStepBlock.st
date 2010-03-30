stepping
defaultStepBlock
	^ [ :receiver :class :aMessage :action | 
		self indent.
		PFile stderr: receiver class name, '@', class name , '>>' , aMessage asString.
		PFile stderr lf.
		self step: action ]