accessing
at: key ifAbsent: aBlock
	<pPrimitive: #at:ifAbsent: plugin: #'Collection.Dictionary'>
	| bucket |
	linear
		ifTrue: [ bucket := buckets at: 1 ]
		ifFalse: [
			bucket := buckets at: key hash \\ buckets size + 1.
			bucket ifNil: [ ^ aBlock value ]].
	^ bucket at: key ifAbsent: aBlock