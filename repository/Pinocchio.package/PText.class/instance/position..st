accessing
position: value
	| pos l |
	pos := value.
	lines start.
	[ lines next ] whileTrue: [
		l := lines value.
		pos < l size ifTrue: [
			^ l position: pos + 1 ].
		pos := pos - (l size) - 1 ].
	self indexOutOfBounds: pos