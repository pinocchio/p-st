declarations
ensureClassReferenceForName: aString
	| internalClass |
	internalClass := self class lookup: aString.
	^ PClassReference named: aString