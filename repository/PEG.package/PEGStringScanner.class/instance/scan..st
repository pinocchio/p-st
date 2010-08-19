matching
scan: subCollection
	(collection contains: subCollection at: position) ifFalse: [ ^ false ].
	position := position + subCollection size.
	^ true