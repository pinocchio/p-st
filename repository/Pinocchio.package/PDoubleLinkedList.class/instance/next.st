accessing
next
	current == end ifTrue: [ ^ false ].
	current := current next.
	^ true.