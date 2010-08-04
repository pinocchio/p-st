accessing
rawDefaultIdFor: anObject
	uidCounter := uidCounter + 1.
	^ (anObject class pinocchioName asLowercase , uidCounter asString) asSymbol