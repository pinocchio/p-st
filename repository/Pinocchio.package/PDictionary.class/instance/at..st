accessing
at: key
	<preventExport>
	| hash bucket |
	hash := key hash.
	bucket := self bucketForHash: hash.
	^ self at: key bucket: bucket.