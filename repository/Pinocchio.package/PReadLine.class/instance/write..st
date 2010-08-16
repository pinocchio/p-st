accessing
write: character
	buffer add: character.
	buffer atEnd ifFalse: [ ^ output insert: character ].
	output << character