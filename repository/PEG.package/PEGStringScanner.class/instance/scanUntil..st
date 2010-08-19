matching
scanUntil: char
	position := collection indexOf: char startingAt: position + 1 ifAbsent: [ collection size + 1 ].
	position := position - 1