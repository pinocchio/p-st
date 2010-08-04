private
bucketWithRoomAt: index
	| bucket |
	bucket := buckets at: index.
	bucket ifNil: [ ^ self newBucketAt: index ].
	bucket isFull ifTrue: [ ^ self growBucketAt: index ].
	^ bucket