accessing
rawDefaultIdFor: anObject
	uidCounter := uidCounter + 1.
	^ (anObject class name, uidCounter asString) asSymbol