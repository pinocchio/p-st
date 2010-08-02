instance creation
instance
	instance isNil ifTrue: [ ^ instance := super new ].
	^ instance