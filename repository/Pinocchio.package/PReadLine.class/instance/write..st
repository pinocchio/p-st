accessing
write: character
	buffer add: character.
	buffer atEnd ifFalse: [
		output csiEscape.
		output << $@ ].
	output << character.
	^ character