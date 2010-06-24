matching
scan: subCollection
	(readLimit - position) >= subCollection size
		ifFalse: [ ^ nil ].
	1 to: subCollection size do:  [ :i |
		(collection at: (position + i)) = (subCollection at: i)
			ifFalse: [ ^ nil ] ].
	position := position + subCollection size.
	^ subCollection