private
newBucketAt: bucketIndex
	| bucket |
	bucket := PDictBucket new.
	buckets at: bucketIndex put: bucket.
	^ bucket