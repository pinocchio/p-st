accessing
keys
	| keys index |
	keys := Set new: size.
	buckets do: [ :bucket|
		self keys: keys bucket: bucket.
	].
	^ keys