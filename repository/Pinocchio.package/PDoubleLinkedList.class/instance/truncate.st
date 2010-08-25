accessing
truncate
	"remove till the end"
	self atEnd ifTrue: [ ^ false ]. 
	size := position.
	current next: end.
	end previous: current.
	^ true