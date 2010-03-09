removing
removeKey: key ifAbsent: aBlock 
	| bucket value |
	bucket := self rawBucketForHash: key hash.
	bucket ifNil:[ ^ aBlock value].
	value := bucket removeKey: key ifAbsent: aBlock.
	size := size - 1.
	^ value.