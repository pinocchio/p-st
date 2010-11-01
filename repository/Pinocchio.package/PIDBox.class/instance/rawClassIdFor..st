visiting
rawClassIdFor: aClass
	| id |
	id := aClass package asString replaceAll: $. with: $_.
	^ id, '_', aClass name.