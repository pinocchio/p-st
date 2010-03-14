accessing
at: key put: anObject
	<pinocchioPrimitive: #at:put: module: #'Collection.Dictionary'>
	self shouldGrow ifTrue: [ self grow].
	buckets size = 1 ifTrue: [
		self inFirstBucketAt: key put: anObject.
	] ifFalse: [
		(self bucketForHash: key hash) addKey: key value: anObject.
	].
	size := size + 1.
	^ anObject
