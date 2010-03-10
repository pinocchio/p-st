private
rawBucketForHash: hash
	^ buckets at: (self bucketIndexForHash: hash).