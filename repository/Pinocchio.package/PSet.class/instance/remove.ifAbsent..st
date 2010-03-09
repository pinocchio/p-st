removing
remove: anObject ifAbsent: aBlock
	| bucket value |
	bucket := self rawBucketForHash: anObject hash.
	bucket ifNil:[ ^ aBlock value].
	value := bucket remove: anObject ifAbsent: aBlock.
	size := size - 1.
	^ value.