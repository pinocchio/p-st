visitor
visitVariable: aPinocchioVariable 
	self put: aPinocchioVariable
		with: 'new_AST_Variable_named(L"' , aPinocchioVariable name asString cEscaped, '")'.