convenience
acceptOnCollection: aCollection
	aCollection isNil ifTrue: [^ OrderedCollection new ].
	^ aCollection collect: [:each | each accept: self]