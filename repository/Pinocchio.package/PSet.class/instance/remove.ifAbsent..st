removing
remove: anObject ifAbsent: aBlock
	| bucket value |
	linear ifTrue: [ bucket := buckets at: 1 ]
		ifFalse: [
			bucket := buckets at: anObject hash \\ buckets size + 1.
			bucket ifNil: [ ^ aBlock value ]].
	value := bucket remove: anObject ifAbsent: aBlock.
	self checkShrink.
	^ value