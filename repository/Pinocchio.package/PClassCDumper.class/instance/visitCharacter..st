visitor
visitCharacter: aPinocchioCharacter
	self put: aPinocchioCharacter with: 'new_Character(L''' , aPinocchioCharacter char cEscaped asString , ''')'