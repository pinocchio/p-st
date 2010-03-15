private
bucketForIndex: bucketIndex
	<preventExport>
	| bucket |
	bucket :=  buckets at: bucketIndex.
	bucket ifNil: [ ^ self newBucketAt: bucketIndex. ].
	bucket isFull ifTrue: [
		^ self growBucketAt: bucketIndex.
	].
	^ bucket.