interpretation
checkStep: receiver message: aMessage
	(stepBlock value: receiver value: aMessage) ifTrue: [
		self indent.
		PFile stderr: aMessage selector.
		PFile stderr lf.
		self step: receiver.
	]