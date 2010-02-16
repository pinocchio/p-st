visiting
visitClass: aPClass
	(sortedClasses includes: aPClass) ifTrue: [ ^ self].
	aPClass superclass == PNil nil ifFalse: [
		aPClass superclass accept: self.
	].
	sortedClasses addLast: aPClass.