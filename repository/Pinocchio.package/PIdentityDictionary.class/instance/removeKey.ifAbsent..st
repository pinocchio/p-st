removing
removeKey: key ifAbsent: aBlock
	| value bucket |
	linear
		ifTrue: [ bucket := buckets at: 1 ]
		ifFalse: [
			bucket := buckets at: key identityHash \\ buckets size + 1.
			bucket ifNil: [ ^ aBlock value ]].
	value := bucket remove: key ifAbsent: [ ^ aBlock value ].
	self checkShrink.
	^ value