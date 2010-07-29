matching
scanPush: subCollection
	position + subCollection size > readLimit ifTrue: [ ^ false ].
	1 to: subCollection size do:  [ :i |
		(collection at: (position + i)) asInteger = (subCollection at: i)
			ifFalse: [ ^ false ] ].
	stack push: collection from: position to: position + subCollection size.
	position := position + subCollection size.
	^ true