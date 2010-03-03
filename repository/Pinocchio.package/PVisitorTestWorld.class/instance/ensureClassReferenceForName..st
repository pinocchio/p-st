accessing
ensureClassReferenceForName: aName
	aName = 'Metaclass' ifTrue: [ ^ PClassReference named: aName ].
	aName = 'PCallec' ifTrue: [ ^ PClassReference named: 'Callec' ].
	"cheap solution for now until the error system is ready"
	self halt.