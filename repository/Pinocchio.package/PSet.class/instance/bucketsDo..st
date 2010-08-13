enumerating
bucketsDo: aBlock
	buckets do: [ :bucket | bucket ifNotNil: [ aBlock value: bucket ] ]