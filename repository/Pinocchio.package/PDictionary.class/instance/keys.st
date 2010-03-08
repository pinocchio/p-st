accessing
keys
	| keys index |
	keys := Set new: size.
	data do: [ :bucket|
		self keys: keys bucket: bucket.
	].
	^ keys