removing
removeKey: key ifAbsent: aBlock
	| value bucket |
	linear ifTrue: [
		value := (buckets at: 1) removeKey: key ifAbsent: [ ^ aBlock value ].
		self checkShrink.
		^ value ].
	bucket := buckets at: key identityHash \\ buckets size + 1.
	bucket ifNil: [ ^ aBlock value ].
	value := bucket remove: key ifAbsent: [ ^ aBlock value ].
	self checkShrink.
	^ value