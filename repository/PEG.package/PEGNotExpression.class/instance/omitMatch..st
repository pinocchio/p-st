matching
omitMatch: input
	| match |
	match := child match: input.
	match ifNil: [ self consume ifTrue: [ input forward ]. ^ true ].
	input backward.
	^ nil