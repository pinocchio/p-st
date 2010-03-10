private
bucketIndexForHash: hash
	^ ((hash - 1) \\ buckets size) + 1