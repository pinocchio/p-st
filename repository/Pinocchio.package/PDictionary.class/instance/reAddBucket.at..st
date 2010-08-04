private
reAddBucket: bucket at: index
	| c key bucketIndex |
	bucket ifNil: [ ^ self ].
	c := 1.
	buckets at: index put: bucket.
	[ c <= bucket bucketSize ] whileTrue: [ 
			key := bucket at: c.
			bucketIndex := key hash \\ buckets size + 1.
			bucketIndex = index
				ifTrue: [ c := c + 2 ]
				ifFalse: [ 
					(self bucketWithRoomAt: bucketIndex) newKey: key value: (bucket at: c + 1).
					bucket removeAt: c ] ]