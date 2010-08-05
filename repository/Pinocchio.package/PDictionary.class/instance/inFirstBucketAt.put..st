private
inFirstBucketAt: key put: anObject
	^ ((buckets at: 1) assign: key to: anObject)
		ifTrue: [ anObject ]
		ifFalse: [ self inFirstBucketAtNew: key put: anObject ]