matching
match: input to: stream
	1 to: children size do: [ :index |
		((children at: index) match: input to: stream) ifFalse: [ ^ false ] ].
	^ true