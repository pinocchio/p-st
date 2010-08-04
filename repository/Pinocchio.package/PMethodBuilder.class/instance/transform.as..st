accessing
transform: closure as: name
	self reset.
	selector := name.
	^ closure accept: self