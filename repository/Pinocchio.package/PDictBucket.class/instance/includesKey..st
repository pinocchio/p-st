testing
includesKey: aKey
	self keysDo: [ :key|
		key = aKey ifTrue: [ ^ true ].
	].
	^ false.