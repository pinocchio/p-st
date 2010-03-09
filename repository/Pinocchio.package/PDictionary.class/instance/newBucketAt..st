private
newBucketAt: bucketIndex
	<preventExport>
	| bucket |
	bucket := Array new: 4.
	buckets at: bucketIndex put: bucket.
	^ bucket.
