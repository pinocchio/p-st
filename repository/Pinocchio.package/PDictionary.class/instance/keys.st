accessing
keys
	| keys |
	keys := PSet new: size.
	self bucketsDo: [ :bucket | bucket keysDo: [ :key | keys add: key ] ].
	^ keys