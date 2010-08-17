accessing
remove
	self atStart ifTrue: [ ^ false ]. 
	size := size - 1.
	current previous next: current next.
	current next previous: current previous.
	current := current previous.
	^ true