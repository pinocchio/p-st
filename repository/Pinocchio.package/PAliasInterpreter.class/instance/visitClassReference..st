interpreting
visitClassReference: aClassReference
	^ PLiteralAlias new
		value: aClassReference pclass;
		context: context