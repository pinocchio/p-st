removing
deleteCharacter
	self csiEscape.
	outStream << $P.