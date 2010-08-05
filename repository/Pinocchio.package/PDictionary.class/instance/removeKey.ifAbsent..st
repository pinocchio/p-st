removing
removeKey: key ifAbsent: aBlock
	| bucket value return |
	buckets size = 1
		ifTrue:
			[ size := size - 1.
			^ (buckets at: 1)
				removeKey: key
				ifAbsent:
					[ size := size + 1.
					^ aBlock value ] ].
	return := [ ^ aBlock value ].
	bucket := self rawBucketForHash: key hash.
	bucket ifNil: return.
	value := bucket removeKey: key ifAbsent: return.
	self shouldShrink
		ifTrue: [ self shrink ].
	size := size - 1.
	^ value