matching
scan: subCollection
	| s |
	s := subCollection size.
	position + s > readLimit ifTrue: [ ^ false ].
	1 to: s do:  [ :i |
		(collection basicAt: (position + i)) = (subCollection at: i)
			ifFalse: [ ^ false ] ].
	position := position + s.
	^ true