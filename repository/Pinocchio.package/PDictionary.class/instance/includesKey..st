testing
includesKey: key
	| bucket |
	buckets size = 1 ifTrue: [
		^ (buckets at: 1) includesKey: key.
	].
	bucket := (buckets at: (key hash \\ buckets size) + 1).
	bucket ifNil: [ ^ false].
	^ bucket includesKey: key.