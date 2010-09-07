convenience
ensureClassReference: aString
	| package pclass aClassReference aClassNameSymbol|
	pclass := self pclassForName: aString.
	package := self ensurePackageFor: pclass.
	aClassNameSymbol := pclass name.
	package at: aClassNameSymbol ifPresent: [ :el | ^ el ].
	aClassReference := package ensureClassReference: aClassNameSymbol.
	"TODO cleanup duplicated work here, could store directly the PClass"
	todo add: pclass methodProvider.
	^ aClassReference