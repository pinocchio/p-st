enumeration
keyValueIndexDo: aBlock
	|index key|
	index := 1.
	[index <= bucketSize] whileTrue: [
		"value: key v value: value value: index"
		aBlock value: (self at: index) 
			value: (self at: index + 1) 
			value: index.
		index := index + 2.
	].
	