private
grow: addition
	| newArray |
	newArray := Array new: ((size * 2) max: (position + addition)).
	1 to: size do: [ :i | newArray at: i put: (array at: i) ].
	array := newArray.
	size := newArray size.