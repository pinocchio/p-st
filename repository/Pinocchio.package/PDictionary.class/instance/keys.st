accessing
keys
	| keys index |
	keys := PSet new: size.
	self bucketsDo: [ :bucket|
		bucket keysDo: [ :key|
			keys add: key.
		].
	].
	^ keys