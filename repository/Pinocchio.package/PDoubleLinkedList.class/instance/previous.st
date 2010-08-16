accessing
previous
	current previous == start ifTrue: [ ^ false ].
	current := current previous.
	^ true.