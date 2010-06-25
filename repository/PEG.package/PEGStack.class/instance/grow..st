private
grow: size
	| newArray |
	(array size >= (position + size)) ifTrue: [ ^ self ].
	newArray := Array new: ((array size * 2) max: (position + size)).
	1 to: array size do: [ :i | newArray at: i put: (array at: i) ].
	array := newArray