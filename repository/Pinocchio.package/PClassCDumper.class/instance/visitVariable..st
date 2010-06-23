visitor
visitVariable: aPinocchioVariable
	self put: aPinocchioVariable
		with: [ :s| s << 'new_Variable_named(L"' << aPinocchioVariable name asString cEscaped << '", '
				  << aPinocchioVariable scopeId asString << $)]