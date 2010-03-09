private
newBucketAt: bucketIndex
	| bucket |
	bucket := self class bucketClass new.
	buckets at: bucketIndex put: bucket.
	^ bucket.
