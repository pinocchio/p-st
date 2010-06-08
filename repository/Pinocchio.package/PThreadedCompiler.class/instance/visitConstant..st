visiting
visitConstant: aConst
	internalConstantCode at: aConst constant ifPresent: [ :instruction|
		^ self append: instruction.
	].
	self append: #pushNext.
	self append: aConst constant.