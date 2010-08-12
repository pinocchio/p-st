enumerating
valuesDo: aBlock
	self bucketsDo: [ :bucket | bucket do: aBlock ]
	