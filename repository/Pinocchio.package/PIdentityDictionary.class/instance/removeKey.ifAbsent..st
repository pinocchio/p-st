removing
removeKey: key ifAbsent: aBlock
	| bucket value |
	linear ifTrue: [
		size := size - 1.
		^ (buckets at: 1)
			remove: key
			ifAbsent:
				[ size := size + 1.
				^ aBlock value ] ].
	bucket := buckets at: key hash \\ buckets size + 1.
	bucket ifNil: [ ^ aBlock value ].
	value := bucket remove: key ifAbsent: [ ^ aBlock value ].
	self checkShrink.
	^ value