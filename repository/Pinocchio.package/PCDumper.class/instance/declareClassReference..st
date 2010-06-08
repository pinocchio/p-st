convenience
declareClassReference: aPClassReference
	self
		putRaw: aPClassReference
		with: 'new_ClassReference(' , '(Class)' , aPClassReference pclass uid , ')'