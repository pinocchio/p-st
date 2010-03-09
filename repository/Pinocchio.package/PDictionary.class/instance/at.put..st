accessing
at: key put: value
	<preventExport>
	| bucket bucketIndex index |
	bucketIndex := self bucketIndexForHash: key hash.
	bucket := buckets at: bucketIndex.
	bucket ifNil: [ 
		bucket := self newBucketAt: bucketIndex.
		bucket at: 1 put: key.
		bucket at: 2 put: value.
	] ifNotNil:  [
		(self at: key put: value bucket: bucket) ifFalse: [
			index := bucket size.
			bucket := self growBucketAt: bucketIndex.
			bucket at: index+1 put: key.
			bucket at: index+2 put: value.
		].
	].
	size := size + 1.
	self shouldGrow ifTrue: [ self grow].
	^ value
