accessing
keyIndex: aKey
	^ self keyIndex: aKey ifAbsent: [ self errorKeyNotFound: aKey].