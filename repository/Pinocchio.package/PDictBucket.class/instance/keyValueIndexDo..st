enumeration
keyValueIndexDo: aBlock
	|key|
	1 to: bucketSize by: 2 do: [ :index |
		"value: key v value: value value: index"
		aBlock value: (self at: index) 
			value: (self at: index + 1) 
			value: index.
	].
	