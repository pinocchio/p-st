matching
omitMatch: input
	1 to: children size do: [ :index | 
		input skipWhitespace.
		((children at: index) omitMatch: input) ifFalse: [ ^ false ]].
	^ true