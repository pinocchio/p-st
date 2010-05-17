private
bucketForIndex: bucketIndex
	| bucket |
	bucket := buckets at: bucketIndex.
	bucket ifNil: [ ^ self newBucketAt: bucketIndex ].
	bucket isFull ifTrue: [ ^ self growBucketAt: bucketIndex ].
	^ bucket