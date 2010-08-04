accessing
at: key ifAbsent: aBlock
	<pPrimitive: #at:ifAbsent: plugin: #'Collection.Dictionary'>
	| bucket |
	buckets size = 1 ifTrue: [ ^ (buckets at: 1) at: key ifAbsent: aBlock ].
	bucket := buckets at: (key hash \\ buckets size) + 1.
	bucket ifNil: [ ^ aBlock value ].
	^ bucket at: key ifAbsent: aBlock