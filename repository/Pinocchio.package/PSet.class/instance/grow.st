private
grow
	<preventExport>
	| oldBuckets oldSize |
	oldBuckets := buckets.
	buckets := Array new: (oldBuckets size << 1).
	size := 0.
	oldBuckets do: [:bucket|
		self reAddBucket: bucket.
	].