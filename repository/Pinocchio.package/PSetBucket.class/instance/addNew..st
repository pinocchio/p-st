adding
addNew: value
	^ self at: (bucketSize := bucketSize + 1) put: value