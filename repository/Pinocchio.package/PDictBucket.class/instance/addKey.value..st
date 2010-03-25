adding
addKey: aKey value: anObject
	^ self
		atKey: aKey
		put: anObject
		ifAbsent: [ self newKey: aKey value: anObject ]