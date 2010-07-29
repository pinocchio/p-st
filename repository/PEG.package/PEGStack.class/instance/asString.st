converting
asString
	| newArray s |
	s := position - mark.
	newArray := String new: s.
	1 to: s do: [ :i | newArray at: i put: (array at: i + mark)].
	^ newArray