accessing
add: value
	| new |
	new := PDoubleLink new value: value.
	new next: current next.
	current next: new.
	current := new.
	size := size + 1.
	position := position + 1.