accessing
position
	| pos idx |
	pos := 0.
	idx := lines position.
	lines start.
	1 to: idx - 1 do: [ :i |
		lines next.
		pos := pos + lines value size ].
	lines next.
	^ pos + lines value position
	