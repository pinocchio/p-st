private
rawBucketForHash: hash
	<preventExport>
	^ buckets at: (self bucketIndexForHash: hash).