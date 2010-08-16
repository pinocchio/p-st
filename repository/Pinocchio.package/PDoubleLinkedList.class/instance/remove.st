accessing
remove
	current previous == start ifTrue: [ ^ false ]. 
	size := size - 1.
	current previous: current previous previous.
	current previous next: current.
	^ true