visitor
visitInstVariable: aPInstanceVariable 
	self putRaw: aPInstanceVariable 
		with: ('new_AST_InstVariable(', aPInstanceVariable index asString
										,', L"', aPInstanceVariable name, '")').
	globals add: aPInstanceVariable.