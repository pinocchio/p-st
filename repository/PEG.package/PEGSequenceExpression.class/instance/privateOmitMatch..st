matching
privateOmitMatch: input
	| match |
	children do: [:child | 
		skipWhitespace ifTrue: [input skipWhitespace].
		(child omitMatch: input) ifNil: [ ^ match ]
		].
	^ true