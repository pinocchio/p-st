adding
addInFirstBucket: value
	| bucket |
	bucket := buckets at: 1.
	(bucket includes: value) ifTrue: [ ^ value ].
	bucket isFull ifTrue: [
		size < maxLinear ifFalse: [
			buckets := Array new: 32.
			self reAddBucket: bucket at: 1.
			^ self add: value ].
		bucket := self growBucketAt: 1 ].
	bucket addNew: value.
	size := size + 1.
	^ value