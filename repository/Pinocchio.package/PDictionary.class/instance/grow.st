private
grow
	<pinocchioPrimitive: #grow module: #'Collection.Dictionary'>
	| oldBuckets |
	oldBuckets := buckets.
	buckets := Array new: (oldBuckets size << 1).
	size := 0.
	oldBuckets do: [:bucket|
		self reAddBucket: bucket.
	]	