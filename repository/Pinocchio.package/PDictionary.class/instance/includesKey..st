testing
includesKey: key
	<pPrimitive: #includesKey: plugin: #'Collection.Dictionary'>
	linear ifTrue: [ ^ (buckets at: 1) includesKey: key ].
	^ (buckets at: key hash \\ buckets size + 1)
		ifNil: [ false ]
		ifNotNil: [ :bucket | bucket includesKey: key ]