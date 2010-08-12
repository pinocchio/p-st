private
bucketWithRoomAt: index
	^ (buckets at: index)
		ifNil: [ self newBucketAt: index ]
		ifNotNil: [ :bucket |
			bucket isFull ifTrue: [ ^ self growBucketAt: index ].
			bucket ]