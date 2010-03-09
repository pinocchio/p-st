accessing
at: key ifAbsent: aBlock
	| bucket |
	bucket := self rawBucketForHash: key hash.
	bucket ifNil: [ ^ aBlock value ].
	^ bucket atKey: key ifAbsent: aBlock.