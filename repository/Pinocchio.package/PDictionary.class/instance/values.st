accessing
values
	| values index |
	values := Array new: size.
	index := 0.
	self do: [ :value | values at: (index := index + 1) put: value ].
	^ values