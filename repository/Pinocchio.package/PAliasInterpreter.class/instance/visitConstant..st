interpreting
visitConstant: aConstant
	^ PLiteralAlias new
		value: aConstant constant;
		context: context