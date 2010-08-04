private
at: key ifAbsent: aBlock
	| bucket |
	buckets size = 1 ifTrue: [ ^ (buckets at: 1) at: key ifAbsent: aBlock ].
	bucket := buckets at: key identityHash \\ buckets size + 1.
	bucket ifNil: [ ^ aBlock value ].
	^ bucket at: key ifAbsent: aBlock