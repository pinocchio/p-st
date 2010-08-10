testing
includes: anObject
	linear ifTrue: [ ^ (buckets at: 1) includes: anObject ].
	^ (buckets at: anObject identityHash \\ buckets size + 1)
		ifNil: [ false ]
		ifNotNil: [ :bucket | bucket includes: anObject ]