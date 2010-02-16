matching
privateMatch: input
	|match |
	children do: [ :child |
		match := child match: input.
		match ifNotNil: [ ^ match ].
	].
	^ nil