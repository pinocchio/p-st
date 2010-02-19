visitor
visitConstant: aPinocchioConstant
	| constant |
	constant := aPinocchioConstant constant asPObject.
	self visit: constant.
	self put: aPinocchioConstant
		with: ('new_AST_Constant((Object)' , constant uid , ')').
