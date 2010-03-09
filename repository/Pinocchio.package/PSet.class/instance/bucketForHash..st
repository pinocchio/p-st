private
bucketForHash: hash
	<preventExport>
	| bucketIndex bucket |
	bucketIndex := self bucketIndexForHash: hash.
	bucket :=  buckets at: bucketIndex.
	bucket ifNil: [ ^ self newBucketAt: bucketIndex. ].
	bucket isFull ifTrue: [
		^ self growBucketAt: bucketIndex.
	].
	^ bucket.