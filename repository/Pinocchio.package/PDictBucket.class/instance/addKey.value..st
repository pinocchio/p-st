adding
addKey: aKey value: anObject
	self keyIndexDo:  [ :key :index|
		key = aKey ifTrue: [
			^ self at: index + 1 put: anObject.
		].
	].
	self at: bucketSize + 1 put: aKey.
	self at:  bucketSize + 2 put: anObject.
	bucketSize := bucketSize + 2.
	^ anObject.