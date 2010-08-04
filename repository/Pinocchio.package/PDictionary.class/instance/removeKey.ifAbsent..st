removing
removeKey: key ifAbsent: aBlock
	| bucket value |
	buckets size = 1
		ifTrue:
			[ size := size - 1.
			^ (buckets at: 1)
				remove: key
				ifAbsent:
					[ size := size + 1.
					^ aBlock value ] ].
	bucket := self rawBucketForHash: key hash.
	bucket ifNil: [ ^ aBlock value ].
	value := bucket remove: key ifAbsent: [ ^ aBlock value ].
	self checkShrink.
	^ value