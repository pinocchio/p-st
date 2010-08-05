private
reAddBucket: bucket at: index
	| c item bucketIndex |
	buckets at: index put: bucket.
	c := 1.
	[ c <= bucket bucketSize ] whileTrue: [ 
		item := bucket at: c.
		bucketIndex := item identityHash \\ buckets size + 1.
		bucketIndex = index
			ifTrue: [ c := c + 1 ]
			ifFalse: [
				(self bucketWithRoomAt: bucketIndex) addNew: item.
				bucket removeAt: c ]]