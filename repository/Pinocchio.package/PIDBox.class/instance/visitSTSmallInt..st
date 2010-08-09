visiting
visitSTSmallInt: aSmallint
	uidCounter := uidCounter + 1.
	^ ('int_', aSmallint asString) copyReplaceAll: #- with: #n .