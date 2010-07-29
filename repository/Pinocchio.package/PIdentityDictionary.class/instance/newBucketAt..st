private
newBucketAt: bucketIndex
	| bucket |
	bucket := PIdentityDictBucket new.
	buckets at: bucketIndex put: bucket.
	^ bucket