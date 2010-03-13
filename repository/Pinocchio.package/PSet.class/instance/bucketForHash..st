private
bucketForHash: hash
	<preventExport>
	| bucket bucketIndex |
	bucketIndex := (hash \\ buckets size) + 1.
	bucket :=  buckets at: bucketIndex.
	bucket ifNil: [ ^ self newBucketAt: bucketIndex. ].
	bucket isFull ifTrue: [
		^ self growBucketAt: bucketIndex.
	].
	^ bucket.