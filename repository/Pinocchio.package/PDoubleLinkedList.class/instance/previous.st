navigating
previous
	self atStart ifTrue: [ ^ false ].
	current := current previous.
	position := position - 1.
	^ true.