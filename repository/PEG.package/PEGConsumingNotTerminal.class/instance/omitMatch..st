matching
omitMatch: input
	char = input peek ifTrue: [ ^ false ].
	input forward.
	^ true