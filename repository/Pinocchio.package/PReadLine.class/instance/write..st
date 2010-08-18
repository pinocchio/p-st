inserting
write: character
	text add: character.
	output << character.
	self moveFailure: 1.
	self repaint.