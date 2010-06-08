convenience
declareClassReference: aPClassReference
	self
		putRaw: aPClassReference
		with: 'new_Organization_ClassReference(' , '(Class)' , aPClassReference pclass uid , ')'