accessing
at: key ifAbsent: aBlock
	| bucket |
	buckets size = 1 ifTrue: [
		^ (buckets at: 1) atKey: key ifAbsent: aBlock.
	].
	bucket := self rawBucketForHash: key hash.
	bucket ifNil: [ ^ aBlock value ].
	^ bucket atKey: key ifAbsent: aBlock.