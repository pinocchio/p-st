private
grow
	<pinocchioPrimitive: #grow module: #'Collection.Dictionary'>
	| oldBuckets |
	oldBuckets := buckets.
	buckets := Array new: ((oldBuckets size << 1) max: 32).
	size := 0.
	oldBuckets withIndexDo: [:bucket :index |
		self reAddBucket: bucket at: index.
	]	