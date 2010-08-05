accessing
keys
	| keys index |
	keys := Array new: size.
	index := 0.
	self keysDo: [ :key | keys at: (index := index + 1) put: key ].
	^ keys