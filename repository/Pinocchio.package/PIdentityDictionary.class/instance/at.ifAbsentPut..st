accessing
at: key ifAbsentPut: aBlock
	| bucketIndex bucket value |
	buckets size = 1 ifTrue: [ ^ self inFirstBucketAt: key ifAbsentPut: aBlock ].
		
	bucketIndex := key identityHash \\ buckets size + 1.
	bucket := buckets at: bucketIndex.
	bucket ifNil: [
		value := aBlock value.
		(self newBucketAt: bucketIndex) newKey: key value: value.
		self checkGrow.
		^ value ].
	^ bucket at: key ifAbsent: [
		bucket isFull ifTrue: [ bucket := self growBucketAt: bucketIndex ].
		value := aBlock value.
		bucket newKey: key value: value.
		self checkGrow.
		value ]