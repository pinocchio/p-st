accessing
inFirstBucketAt: key put: anObject
	| bucket |
	bucket := buckets at: 1.
	(bucket assign: key to: anObject) ifTrue: [ ^ anObject ].
	bucket isFull ifTrue: [
		(bucket size < maxLinear)
			ifFalse: [
				self grow.
				^ self at: key put: anObject ].
		bucket := self growBucketAt: 1 ].
	bucket newKey: key value: anObject.
	size := size + 1.
	^ anObject