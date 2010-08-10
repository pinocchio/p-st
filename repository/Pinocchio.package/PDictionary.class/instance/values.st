accessing
values
	| values index |
	values := Array new: size.
	index := 0.
	self valuesDo: [ :value | values at: (index := index + 1) put: value ].
	^ values