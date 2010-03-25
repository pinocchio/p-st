private
newBucketAt: bucketIndex
	<preventExport>
	| bucket |
	bucket := PDictBucket new.
	buckets at: bucketIndex put: bucket.
	^ bucket