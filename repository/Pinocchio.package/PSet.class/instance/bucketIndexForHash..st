private
bucketIndexForHash: hash
	<preventExport>
	^ ((hash - 1) \\ buckets size) + 1