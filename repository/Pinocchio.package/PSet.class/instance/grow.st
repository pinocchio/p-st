private
grow
	| oldBuckets oldSize |
	oldBuckets := buckets.
	buckets := Array new: oldBuckets size * 2.
	oldBuckets withIndexDo: [ :bucket :index |
		bucket isNil ifFalse: [ self reAddBucket: bucket at: index]].