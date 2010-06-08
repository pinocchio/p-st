visiting
visitInternalConstant: aConst
	<preventExport>
	self append: (internalConstantCode at: aConst constant).