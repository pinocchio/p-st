private
growBucketAt: index
	<preventExport>
	| oldBucket newBucket |
	oldBucket := buckets at: index.
	newBucket := Array with:  oldBucket size << 1.
	1 to: oldBucket size do: [ :idx|
		newBucket at: idx put: (oldBucket at: idx)
	].
	^ newBucket