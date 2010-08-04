private
newBucketAt: bucketIndex
	^ buckets at: bucketIndex put: (self newBucket: 4)