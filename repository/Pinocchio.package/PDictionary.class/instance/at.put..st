accessing
at: key put: anObject
	<pinocchioPrimitive: #at:put: module: #'Collection.Dictionary'>
	self shouldGrow ifTrue: [ self grow].
	buckets size = 1 ifTrue: [
		size := size + (self inFirstBucketAt: key put: anObject).
	] ifFalse: [
		size := size + ((self bucketForHash: key hash) addKey: key value: anObject).
	].
	^ anObject
