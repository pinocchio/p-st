accessing
atKey: aKey
	^ self atKey: aKey ifAbsent: [ self keyNotFound: aKey ]