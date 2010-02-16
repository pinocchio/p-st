convenience
addDanglingClassReference: aClassReference
	| cls package |
	self halt.
	cls := Smalltalk at: aClassReference referenceName asSymbol.
	package := self ensurePackageFor: cls.
	aClassReference referenceName: (PSymbol named: cls pinocchioName).
	package at: aClassReference referenceName ifAbsent: [
		package storeClassReference: aClassReference.
		Transcript show: 'checking existence of ', cls name; cr.
		self done at: cls name ifAbsent: [
			Transcript show: '###', cls name ; cr.
			self todo add: cls
		]
	]