private
reAddBucket: bucket at: index
	| c item target |
	bucket ifNil: [ ^ self ].
	buckets at: index put: bucket.
	c := 1.
	[ c <= bucket bucketSize ] whileTrue: [ 
			item := bucket at: c.
			target := self bucketForHash: item hash.
			target ~= bucket
				ifTrue: [ target add: item. bucket removeAt: c. ]
				ifFalse: [ c := c + 1 ] ]