accessing
inFirstBucketAt: key put: anObject
	| bucket |
	bucket := buckets at: 1.
	bucket isFull ifTrue: [ self grow. ^ self at: key put: anObject ].
	size := size + (bucket addKey: key value: anObject).
	^ anObject