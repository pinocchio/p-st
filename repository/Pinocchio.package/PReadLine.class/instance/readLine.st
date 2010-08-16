accessing
readLine
	buffer clear.
	ready := false.
	[ ready ] whileFalse: [ vterm readCharacter ].
	^ buffer asString