precedence
argumentOfBinary: outer
	scoped ifTrue: [ ^ super argumentOfBinary: outer ].
	receiver := receiver argumentOfBinary: outer