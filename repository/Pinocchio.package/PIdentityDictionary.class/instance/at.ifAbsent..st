private
at: key ifAbsent: aBlock
	<pPrimitive: #at:ifAbsent: plugin: #'Collection.IdentityDictionary'>
	linear ifTrue: [ ^ (buckets at: 1) at: key ifAbsent: aBlock ].
	^ (buckets at: key identityHash \\ buckets size + 1)
		ifNil: [ aBlock value ]
		ifNotNil: [ :bucket | bucket at: key ifAbsent: aBlock ]