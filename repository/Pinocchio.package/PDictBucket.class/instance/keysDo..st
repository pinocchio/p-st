enumeration
keysDo: aBlock
	1 to: bucketSize by: 2 do: [ :index | aBlock value: (self at: index) ]