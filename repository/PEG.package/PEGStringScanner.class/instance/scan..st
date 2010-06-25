matching
scan: subCollection
	position + subCollection size > readLimit ifTrue: [ ^ false ].
	1 to: subCollection size do:  [ :i |
		(collection at: (position + i)) = (subCollection at: i)
			ifFalse: [ ^ false ] ].
	position := position + subCollection size.
	^ true