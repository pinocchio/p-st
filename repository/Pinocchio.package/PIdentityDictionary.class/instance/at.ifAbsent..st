private
at: key ifAbsent: aBlock
	| bucket |
	linear
		ifTrue: [ bucket := buckets at: 1 ]
		ifFalse: [
			bucket := buckets at: key identityHash \\ buckets size + 1.
			bucket ifNil: [ ^ aBlock value ]].
	^ bucket at: key ifAbsent: aBlock