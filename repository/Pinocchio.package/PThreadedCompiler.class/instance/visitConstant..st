visiting
visitConstant: aConst
	internalConstantCode at: aConst constant ifPresent: [ :instruction|
		^ self append: instruction.
	].
	self append: #'push1' with: aConst constant.