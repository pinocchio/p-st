accessing
ensureClassReferenceForName: aName
	aName = 'Metaclass' ifTrue: [ ^ PClassReference named: aName ].
	aName = 'PCallec' ifTrue: [ ^ PClassReference named: 'Callec' ].
	self halt.