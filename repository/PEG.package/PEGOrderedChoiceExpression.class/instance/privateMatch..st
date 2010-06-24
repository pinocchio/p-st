matching
privateMatch: input
	children do: [ :child |
		(child match: input)
			ifNotNil: [ :match | ^ match ] ].
	^ nil