enumerating
keysAndValuesDo: aBlock
	self bucketsDo: [ :bucket | bucket keysAndValuesDo: aBlock ]
	