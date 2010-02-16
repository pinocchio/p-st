visitor
visitInstanceVariable: aPInstanceVariable 
	self putRaw: aPInstanceVariable 
		with: ('new_AST_InstVariable(', aPInstanceVariable localId asString
										,', L"', aPInstanceVariable name, '")').
	globals add: aPInstanceVariable.