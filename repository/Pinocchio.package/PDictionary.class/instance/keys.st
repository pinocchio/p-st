accessing
keys
	| keys index |
	keys := Set new: size.
	self bucketsDo: [ :bucket|
		bucket keysDo: [ :key|
			keys add: key.
		].
	].
	^ keys