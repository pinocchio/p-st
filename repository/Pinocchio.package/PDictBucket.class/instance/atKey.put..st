adding
atKey: aKey put: aValue
	^ self atKey: aKey put: aValue ifAbsent: [ self keyNotFound: aKey ]