adding
add: anObject
	size := size + 1.
	buckets size = 1 ifTrue: [
		^ self addInFirstBucket: anObject.
	].
	(self bucketForHash: anObject hash) add: anObject.
	self shouldGrow ifTrue: [ self grow ].
	^ anObject
	