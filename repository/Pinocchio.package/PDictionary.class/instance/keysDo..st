enumerating
keysDo: aBlock
	self bucketsDo: [ :bucket | bucket keysDo: aBlock ]
	