enumerating
valuesDo: aBlock
	self bucketsDo: [ :bucket | bucket valuesDo: aBlock ]
	