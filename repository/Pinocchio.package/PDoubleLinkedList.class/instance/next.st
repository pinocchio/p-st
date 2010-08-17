navigating
next
	self atEnd ifTrue: [ ^ false ].
	current := current next.
	position := position + 1.
	^ true.