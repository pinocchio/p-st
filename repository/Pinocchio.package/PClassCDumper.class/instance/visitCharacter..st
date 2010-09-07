visitor
visitCharacter: aPinocchioCharacter
	self put: aPinocchioCharacter with: [ :s| 
			s << 'new_Character(L''' << aPinocchioCharacter char cEscaped << ''')'].