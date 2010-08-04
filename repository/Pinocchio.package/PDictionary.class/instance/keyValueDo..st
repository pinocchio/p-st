enumerating
keyValueDo: aBlock
	self bucketsDo: [ :bucket | bucket keyValueDo: aBlock ]
	