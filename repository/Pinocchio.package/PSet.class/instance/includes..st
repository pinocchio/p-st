testing
includes: anObject
	| bucket |
	bucket := self rawBucketForHash: anObject hash.
	bucket ifNil: [ ^ false ].
	^ bucket includes: anObject.
	