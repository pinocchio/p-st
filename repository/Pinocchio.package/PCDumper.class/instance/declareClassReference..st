convenience
declareClassReference: aPClassReference
	self putRaw: aPClassReference with: [:s| 
		s << 'new_ClassReference(' << '(Class)' << (self idFor: aPClassReference pclass) << $)].