matching
privateOmitMatch: input
	[skipWhitespace
		ifTrue: [input skipWhitespace].
		(child omitMatch: input) isNil ]
			whileFalse.
	^ true