enumerating
keysAndValuesDo: aBlock
	self bucketsDo: [ :bucket | bucket keyValueDo: aBlock ]
	