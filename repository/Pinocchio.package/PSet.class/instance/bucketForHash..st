private
bucketForHash: hash
	<preventExport>
	^ self bucketForIndex: (hash \\ buckets size) + 1.