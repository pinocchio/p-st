matching
parseOn: input
	1 to: children size do: [ :index |
		((children at: index) parseOn: input) ifTrue: [ ^ true ] ].
	^ false