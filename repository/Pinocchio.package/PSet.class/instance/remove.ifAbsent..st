removing
remove: anObject ifAbsent: aBlock
	| bucket value |
	buckets size = 1
		ifTrue:
			[ size := size - 1.
			^ (buckets at: 1)
				remove: anObject
				ifAbsent:
					[ size := size + 1.
					^ aBlock value ] ].
	bucket := self rawBucketForHash: anObject hash.
	bucket ifNil: [ ^ aBlock value ].
	value := bucket remove: anObject ifAbsent: aBlock.
	size := size - 1.
	^ value