visiting
visitSTCharacter: aCharacter
	uidCounter := uidCounter + 1.
	^ 'char_', uidCounter asString .