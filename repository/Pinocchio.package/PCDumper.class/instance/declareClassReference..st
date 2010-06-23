convenience
declareClassReference: aPClassReference
	self putRaw: aPClassReference
		with: [:s| s << 'new_ClassReference(' << '(Class)' << aPClassReference pclass uid << $)].