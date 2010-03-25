convenience
acceptOnCollection: aCollection
	aCollection isNil
		ifTrue: [ ^ OrderedCollection new: 1 ].
	^ aCollection collect: [ :each | each accept: self ]