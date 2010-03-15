accessing
keys
	| keys |
	keys := Array new: bucketSize // 2.
	self keyIndexDo: [ :key :index|
		keys at: ((index + 1) // 2) put: key.
	].
	^ keys.