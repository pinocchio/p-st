private
grow: addition
	| newArray |
	newArray := Array new: ((size * 2) max: (position + addition)).
	newArray replaceFrom: 1 to: size with: array startingAt: 1.
	array := newArray.
	size := newArray size.