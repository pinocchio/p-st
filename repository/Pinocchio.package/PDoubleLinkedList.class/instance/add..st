accessing
add: value
	| new |
	new := PDoubleLink new value: value.
	new next: current.
	new previous: current previous.
	current previous: new.
	new previous next: new.
	size := size + 1.