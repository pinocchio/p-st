accessing
at: key put: anObject
	<preventExport>
	<pinocchioprimitive: #at:put: module: #Dictionary>
	size := size + 1.
	buckets size = 1 ifTrue: [
		^ self inFirstBucketAt: key put: anObject.
	].
	(self bucketForHash: key hash) addKey: key value: anObject.
	self shouldGrow ifTrue: [ self grow].
	^ anObject
