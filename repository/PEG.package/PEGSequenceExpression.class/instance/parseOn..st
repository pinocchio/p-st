matching
parseOn: input
	1 to: children size do: [ :index | 
		input skipWhitespace.
		((children at: index) parseOn: input) ifFalse: [ ^ false ] ].
	^ true