private
includesKey: key
	linear ifTrue: [ ^ (buckets at: 1) includesKey: key ].
	^ (buckets at: key identityHash \\ buckets size + 1)
		ifNil: [ false ]
		ifNotNil: [ :bucket | bucket includesKey: key ]