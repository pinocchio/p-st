stepping
defaultStepBlock
	^ [ :receiver :aMessage :action | 
		self indent.
		PFile stderr: receiver class name , '>>' , aMessage selector.
		PFile stderr lf.
		^ self step: action ]