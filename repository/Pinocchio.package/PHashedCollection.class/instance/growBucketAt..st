private
growBucketAt: index
	| oldBucket newBucket |
	oldBucket := buckets at: index.
	newBucket := self newBucket: oldBucket size * 2.
	newBucket copyFrom: oldBucket.
	buckets at: index put: newBucket.
	^ newBucket