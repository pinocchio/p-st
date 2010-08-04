adding
newKey: aKey value: anObject
	self at: bucketSize + 1 put: aKey.
	self at: bucketSize + 2 put: anObject.
	bucketSize := bucketSize + 2