matching
privateOmitMatch: input
	children do: [ :child |
		(child omitMatch: input) ifNotNil: [ ^ true ].
	].
	^ nil