accessing
at: key ifAbsent: aBlock
	<pinocchioPrimitive: #at:ifAbsent: module: #'Collection.Dictionary'>
	| bucket |
	buckets size = 1 ifTrue: [
		^ (buckets at: 1) atKey: key ifAbsent: aBlock.
	].
	bucket := buckets at: (key hash \\ buckets size) + 1.
	bucket ifNil: [ ^ aBlock value ].
	^ bucket atKey: key ifAbsent: aBlock.