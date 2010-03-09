testing
includes: anObject
	self valuesDo: [ :value|
		value = anObject ifTrue: [ ^ true ].
	].
	^ false.