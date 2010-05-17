private
reAddBucket: bucket at: index
	| c key target |
	bucket ifNil: [ ^ self ].
	buckets at: index put: bucket.
	c := 0.
	[ c <= bucket size ] whileTrue: [ 
			key := bucket at: c.
			target := self bucketForHash: key.
			target ~= bucket
				ifTrue: [ target atKey: key put: (bucket removeKey: key) ]
				ifFalse: [ c := c + 2 ] ]