convenience
ensureClassReference: aString
	| package pclass aClassReference aClassNameSymbol|
	pclass := self pclassForName: aString.
	package := self ensurePackageFor: pclass.
	aClassNameSymbol := pclass name.
	Transcript show: aClassNameSymbol ; cr.
	package at: aClassNameSymbol ifPresent: [ :el | ^ el ].
	aClassReference := package ensureClassReference: aClassNameSymbol.
	"TODO cleanup duplicated work here, could store directly the PClass"
	self haltIf: pclass methodProvider = Time.
	self haltIf: aString asString = 'Time'.
	self haltIf: pclass methodProvider = DateAndTime.
	self haltIf: aString asString = 'DateAndTime'.
	self haltIf: pclass methodProvider = TimeStamp.
	self haltIf: aString asString = 'TimeStamp'.
	todo add: pclass methodProvider.
	^ aClassReference