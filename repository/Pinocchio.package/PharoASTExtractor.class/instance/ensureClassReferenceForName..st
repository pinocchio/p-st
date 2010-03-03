convenience
ensureClassReferenceForName: aString 
	| package cls aClassReference aClassNameSymbol |
	cls := self sclassForName: aString.
	package := self ensurePackageFor: cls.
	aClassNameSymbol := cls pinocchioName asPObject.
	package at: aClassNameSymbol ifPresent: [ :el| ^ el].
	aClassReference := package ensureClassReference: aClassNameSymbol.
	
	(self todo includes: cls) ifFalse: [ self todo add: cls ].
	^ aClassReference