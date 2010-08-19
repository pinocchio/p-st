matching
scanPush: subCollection
	| s |
	(collection contains: subCollection at: position) ifFalse: [ ^ false ].
	s := subCollection size.
	stack push: collection from: position to: position + s.
	position := position + s.
	^ true