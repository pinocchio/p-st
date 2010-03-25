interpretation
checkStep: receiver message: aMessage do: action
	(stepBlock value: receiver value: aMessage)
		ifTrue:
			[ self indent.
			PFile stderr: receiver class name , '>>' , aMessage selector.
			PFile stderr lf.
			^ self step: action ].
	^ action value