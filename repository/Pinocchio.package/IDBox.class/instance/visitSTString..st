visiting
visitSTString: aString
	uidCounter := uidCounter + 1.
	^ 'string_', uidCounter asString .