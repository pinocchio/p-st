private
rawBucketForHash: hash
	^ buckets at: (hash \\ buckets size) + 1