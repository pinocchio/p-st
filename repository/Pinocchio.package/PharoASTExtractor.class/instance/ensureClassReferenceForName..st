convenience
ensureClassReferenceForName: aString 
	| package cls aClassReference aClassNameSymbol |
	cls := self sclassForName: aString.
	package := self ensurePackageFor: cls.
	aClassNameSymbol := cls pinocchioName asPSymbol.
	package at: aClassNameSymbol ifPresent: [ :el| ^ el].
	
	aClassReference := PClassReference named: aClassNameSymbol
										in: package.
	Transcript show: ('ensureClassReferenceForName: ', aClassNameSymbol printString).
	
	package storeClassReference: aClassReference.
	(self todo includes: cls) ifFalse: [ self todo add: cls ].
	^ aClassReference