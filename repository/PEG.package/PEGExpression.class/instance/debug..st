debugging
debug: input 
	PEGExpression debug ifTrue: 
		[ PEGExpression
			indent;
			increaseIndent.
		('Trying to match: ', self printString, ' at:', input sample) stdout; cr
		]