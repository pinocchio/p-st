removing
removeAt: index
	self at: index put: (self at: bucketSize - 1).
	self at: index + 1 put: (self at: bucketSize).
	bucketSize := bucketSize - 2.
	self at: bucketSize + 1 put: nil.
	self at: bucketSize + 2 put: nil