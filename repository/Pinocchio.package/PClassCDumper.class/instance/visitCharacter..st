visitor
visitCharacter: aPinocchioCharacter 
	self put: aPinocchioCharacter
		with: ('new_Type_Character(L''', aPinocchioCharacter char cEscaped asString, ''')').