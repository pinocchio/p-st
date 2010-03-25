adding
add: anObject
	buckets size = 1
		ifTrue: [ size := size + (self addInFirstBucket: anObject) ]
		ifFalse: [ size := size + ((self bucketForHash: anObject hash) add: anObject) ].
	self shouldGrow
		ifTrue: [ self grow ].
	^ anObject