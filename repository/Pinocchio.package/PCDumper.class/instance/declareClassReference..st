convenience
declareClassReference: aPClassReference
	self putRaw: aPClassReference 
		with: 'new_Organization_ClassReference(',
					'(Type_Class)', aPClassReference pclass uid, ')'.
	
	