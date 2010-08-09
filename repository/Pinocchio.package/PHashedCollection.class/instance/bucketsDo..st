enumerating
bucketsDo: aBlock
	1 to: buckets size do: [ :index |
		(buckets at: index) ifNotNil: [ :bucket | aBlock value: bucket ] ]