accessing
position: value
	| pos l |
	pos := value.
	lines start.
	[ lines next ] whileTrue: [
		l := lines value.
		pos <= l size ifTrue: [
			^ l position: pos ].
		pos := pos - (l size) - 1 ].
	pos = 0 ifTrue: [ ^ l end ].
	self indexOutOfBounds: value