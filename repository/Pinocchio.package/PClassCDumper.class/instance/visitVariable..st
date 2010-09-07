visitor
visitVariable: aPinocchioVariable
	self put: aPinocchioVariable
		with: [ :s| 
			s << 'new_Variable_named(L"' << aPinocchioVariable name cEscaped << '", '
				  << aPinocchioVariable scopeId asString << $)]