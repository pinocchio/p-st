private
includesKey: key
	| bucket |
	linear ifTrue: [ bucket := buckets at: 1 ]
		ifFalse: [
			bucket := buckets at: key identityHash \\ buckets size + 1.
			bucket ifNil: [ ^ false ]].
	^ bucket includesKey: key