accessing
at: key ifAbsent: aBlock
	<pPrimitive: #at:ifAbsent: plugin: #'Collection.Dictionary'>
	linear ifTrue: [ ^ (buckets at: 1) at: key ifAbsent: aBlock ].
	^ (buckets at: key hash \\ buckets size + 1)
		ifNil: [ aBlock value ]
		ifNotNil: [ :bucket | bucket at: key ifAbsent: aBlock ]