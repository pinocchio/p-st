adding
addKey: aKey value: anObject
	^ self atKey: aKey put: anObject ifAbsent: [
		self at: bucketSize + 1 put: aKey.
		self at:  bucketSize + 2 put: anObject.
		bucketSize := bucketSize + 2.
		anObject
	]