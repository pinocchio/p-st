writing
insert: character
	self csiEscape.
	outStream << $@ << character