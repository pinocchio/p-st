adding
addInFirstBucket: anObject
	(buckets at: 1) isFull
		ifTrue: [ self growBucketAt: 1 ].
	^ (buckets at: 1) add: anObject