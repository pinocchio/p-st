convenience
ensureClassReference: aString
	| package cls aClassReference aClassNameSymbol |
	self haltIf: aString aString = 'Object'.
	self haltIf: aString aString = 'PObject'.
	cls := self sclassForName: aString.
	package := self ensurePackageFor: cls.
	aClassNameSymbol := cls pinocchioName asPObject.
	package at: aClassNameSymbol ifPresent: [ :el | ^ el ].
	aClassReference := package ensureClassReference: aClassNameSymbol.
	todo add: cls.
	^ aClassReference