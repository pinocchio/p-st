matching
omitMatch: input
	children do: [ :child | 
		skipWhitespace ifTrue: [ input skipWhitespace ].
		(child omitMatch: input) ifFalse: [ ^ false ]].
	^ true