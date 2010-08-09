enumeration
do: aBlock
	2 to: bucketSize by: 2 do: [ :index | aBlock value: (self at: index) ]