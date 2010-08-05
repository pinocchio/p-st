private
inFirstBucketAt: key ifAbsentPut: aBlock
	| bucket value |
	bucket := buckets at: 1.
	^ bucket at: key ifAbsent: [
		bucket isFull ifTrue: [
			(bucket size < maxLinear)
				ifFalse: [
					linear := false.
					buckets := Array new: 32.
					self reAddBucket: bucket at: 1.
					^ self at: key put: aBlock value ].
			bucket := self growBucketAt: 1 ].
		value := aBlock value.
		bucket newKey: key value: value.
		size := size + 1.
		^ value ]