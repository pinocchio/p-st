private
growBucketAt: index
	| oldBucket newBucket |
	oldBucket := buckets at: index.
	newBucket := self class bucketClass new: oldBucket size << 1.
	newBucket copyFrom: oldBucket.
	buckets at: index put: newBucket.
	^ newBucket