accessing
inFirstBucketAt: key put: anObject
	| bucket |
	bucket := buckets at: 1.
	bucket isFull
		ifTrue: [ bucket := self growBucketAt: 1 ].
	^ bucket addKey: key value: anObject