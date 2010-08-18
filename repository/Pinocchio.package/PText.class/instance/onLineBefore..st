testing
onLineBefore: position
	| pos idx |
	pos := position.
	idx := lines position.
	lines start.
	1 to: idx - 1 do: [ :i |
		lines next.
		(pos := pos - lines value size - 1) <= 0 ifTrue: [ ^ false ]].
	lines next.
	^ (pos <= lines value size and: [ lines value position < pos ])