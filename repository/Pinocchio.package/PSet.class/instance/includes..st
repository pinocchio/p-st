testing
includes: anObject
	| bucket |
	buckets size = 1 ifTrue: [
		^ (buckets at: 1) includes: anObject.
	].
	bucket := self rawBucketForHash: anObject hash.
	bucket ifNil: [ ^ false ].
	^ bucket includes: anObject.
	