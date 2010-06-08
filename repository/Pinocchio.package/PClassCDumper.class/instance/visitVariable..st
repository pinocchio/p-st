visitor
visitVariable: aPinocchioVariable
	self
		put: aPinocchioVariable
		with:
			'new_Variable_named(L"' , aPinocchioVariable name asString cEscaped , '", ' , aPinocchioVariable scopeId asString
				, ')'