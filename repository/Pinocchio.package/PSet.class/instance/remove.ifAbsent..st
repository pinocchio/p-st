removing
remove: anObject ifAbsent: aBlock
	| bucket value |
	buckets size = 1
		ifTrue: [
			value := (buckets at: 1)
							remove: anObject
							ifAbsent: [ ^ aBlock value ]]
		ifFalse: [
			bucket := self rawBucketForHash: anObject hash.
			bucket ifNil: [ ^ aBlock value ].
			value := bucket remove: anObject ifAbsent: aBlock ].
	self checkShrink.
	^ value