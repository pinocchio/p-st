private
grow
	<preventExport>
	| oldBuckets |
	oldBuckets := buckets.
	buckets := Array new: (oldBuckets size << 1).
	size := 0.
	oldBuckets do: [:bucket|
		self readdBucket: bucket.
	]	