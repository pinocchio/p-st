matching
omitMatch: input
	(string indexOf: input peek) = 0 ifTrue: [ ^ false ].
	input forward.
	^ true