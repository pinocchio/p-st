adding
add: value
	| bucketIndex bucket |
	linear ifTrue: [ ^ self addInFirstBucket: value ].
	
	bucketIndex := (value hash \\ buckets size) + 1.
	bucket := buckets at: bucketIndex.
	bucket ifNil: [
		bucket := self newBucketAt: bucketIndex.
		bucket addNew: value.
		self checkGrow.
		^ value ].
	(bucket includes: value) ifTrue: [ ^ value ].
	bucket isFull ifTrue: [ bucket := self growBucketAt: bucketIndex ].
	bucket addNew: value.
	self checkGrow.
	^ value
	