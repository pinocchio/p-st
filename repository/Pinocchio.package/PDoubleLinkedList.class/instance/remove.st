accessing
remove
	self atStart ifTrue: [ ^ false ]. 
	size := size - 1.
	current previous next: current next.
	current := current previous.
	position := position - 1.
	^ true