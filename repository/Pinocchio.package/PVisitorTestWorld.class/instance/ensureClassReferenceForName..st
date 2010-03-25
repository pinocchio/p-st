accessing
ensureClassReferenceForName: aName
	aName = 'Metaclass'
		ifTrue: [ ^ PClassReference named: aName ].
	aName = 'PContinue'
		ifTrue: [ ^ PClassReference named: 'Continue' ].	"cheap solution for now until the error system is ready"
	self halt