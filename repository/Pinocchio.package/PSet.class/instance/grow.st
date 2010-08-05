private
grow
	| oldBuckets |
	oldBuckets := buckets.
	buckets := Array new: oldBuckets size * 2.
	1 to: oldBuckets size do: [ :index |
		(oldBuckets at: index) ifNotNil: [ :bucket |
			self reAddBucket: bucket at: index]].