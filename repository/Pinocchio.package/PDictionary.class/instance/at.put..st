accessing
at: key put: anObject
	<preventExport>
	size := size + 1.
	buckets size = 1 ifTrue: [
		^ self inFirstBucketAt: key put: anObject.
	].
	(self bucketForHash: key hash) addKey: key value: anObject.
	self shouldGrow ifTrue: [ self grow].
	^ anObject
