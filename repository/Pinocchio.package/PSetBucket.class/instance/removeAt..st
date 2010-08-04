removing
removeAt: anInteger
	self at: anInteger put: (self at: bucketSize).
	self at: bucketSize put: nil. 
	bucketSize := bucketSize - 1