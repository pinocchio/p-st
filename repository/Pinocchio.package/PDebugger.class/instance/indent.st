debugging
indent
	| c |
	c := context ifNil: [ ^ self ].
	[ (c := c returnContext) isNil ] whileFalse: [ PTerminal stderr << '  ' ]