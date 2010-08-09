removing
removeAt: anInteger
	self at: anInteger put: (self at: bucketSize).
	bucketSize := bucketSize - 1.
	self at: bucketSize + 1 put: nil. 