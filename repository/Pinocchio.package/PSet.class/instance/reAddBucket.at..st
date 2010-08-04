private
reAddBucket: bucket at: index
	| c item target bucketIndex |
	bucket ifNil: [ ^ self ].
	buckets at: index put: bucket.
	c := 1.
	[ c <= bucket bucketSize ] whileTrue: [ 
			item := bucket at: c.
			bucketIndex := item hash \\ buckets size + 1.
			bucketIndex = index
				ifTrue: [ c := c + 1 ]
				ifFalse: [
					(self bucketWithRoomAt: bucketIndex) addNew: item.
					bucket removeAt: c ]]