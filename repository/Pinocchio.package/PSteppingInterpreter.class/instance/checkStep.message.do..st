interpretation
checkStep: receiver message: aMessage do: action
	^ stepBlock value: receiver value: aMessage value: action