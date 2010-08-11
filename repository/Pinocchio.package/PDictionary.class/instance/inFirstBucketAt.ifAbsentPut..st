private
inFirstBucketAt: key ifAbsentPut: aBlock
	^ (buckets at: 1) at: key ifAbsent: [
		^ self inFirstBucketAtNew: key put: aBlock value ]