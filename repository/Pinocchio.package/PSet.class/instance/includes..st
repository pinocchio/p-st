testing
includes: anObject
	| bucket |
	linear
		ifTrue: [ bucket := buckets at: 1 ]
		ifFalse: [
			bucket := buckets at: anObject hash \\ buckets size + 1.
			bucket ifNil: [ ^ false ]].
	^ bucket includes: anObject