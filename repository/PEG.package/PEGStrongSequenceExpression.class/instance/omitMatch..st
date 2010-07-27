matching
omitMatch: input
	1 to: children size do: [ :index |
		((children at: index) omitMatch: input) ifFalse: [ ^ false ]].
	^ true