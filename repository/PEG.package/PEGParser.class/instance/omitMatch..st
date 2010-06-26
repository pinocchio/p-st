matching
omitMatch: input
	name ifNotNil: [ self class stream: name ].
	^ expression omitMatch: input