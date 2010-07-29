converting
asArray
	| newArray s |
	s := position - mark.
	newArray := Array new: s.
	1 to: s do: [ :i | newArray at: i put: (array at: i + mark)].
	^ newArray