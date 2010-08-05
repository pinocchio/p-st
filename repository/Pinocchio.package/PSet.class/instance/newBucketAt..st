private
newBucketAt: bucketIndex
	| bucket |
	bucket := PSetBucket new.
	buckets at: bucketIndex put: bucket.
	^ bucket