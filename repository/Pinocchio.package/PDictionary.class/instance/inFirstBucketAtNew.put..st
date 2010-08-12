private
inFirstBucketAtNew: key put: value
	| bucket |
	bucket := buckets at: 1.
	bucket isFull ifTrue: [
		(bucket size < maxLinear)
			ifFalse: [
				linear := false.
				buckets := Array new: 32.
				self reAddBucket: bucket at: 1.
				^ self at: key put: value ].
		bucket := self growBucketAt: 1 ].
	bucket newKey: key value: value.
	size := size + 1.
	^ value