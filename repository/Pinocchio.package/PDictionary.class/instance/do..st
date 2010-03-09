enumerating
do: aBlock
	buckets do: [ :bucket|
		self do: aBlock bucket: bucket.
	].
	