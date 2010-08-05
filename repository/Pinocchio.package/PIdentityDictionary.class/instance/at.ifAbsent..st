private
at: key ifAbsent: aBlock
	linear ifTrue: [ ^ (buckets at: 1) at: key ifAbsent: aBlock ].
	^ (buckets at: key identityHash \\ buckets size + 1)
		ifNil: [ aBlock value ] 
		ifNotNil: [ :bucket | bucket at: key ifAbsent: aBlock ]