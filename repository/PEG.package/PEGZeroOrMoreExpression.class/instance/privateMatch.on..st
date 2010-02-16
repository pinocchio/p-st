matching
privateMatch: input on: result 
	| match |
	[skipWhitespace
		ifTrue: [input skipWhitespace].
		match := child match: input.
		match isNil]
			whileFalse: [result add: match].
	^ result