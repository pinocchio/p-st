accessing
rawDefaultIdFor: anObject
	uidCounter := uidCounter + 1.
	^ (anObject class pinocchioName, uidCounter asString) asSymbol