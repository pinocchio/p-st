visitor
visitSTCharacter: aCharacter
	stream << 'Character ' << (self idFor: aCharacter ) << ' = new_Character(L'''<< aCharacter cEscaped  << ''');'; lf.