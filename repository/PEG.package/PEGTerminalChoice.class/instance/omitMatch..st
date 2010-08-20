matching
omitMatch: input
	(terminal indexOf: input peek) = 0 ifTrue: [ ^ false ].
	input forward.
	^ true