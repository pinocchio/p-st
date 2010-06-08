visitor
visitConstant: aPinocchioConstant
	| constant |
	constant := aPinocchioConstant constant asPObject.
	self visit: constant.
	self put: aPinocchioConstant with: 'new_Constant((Optr)' , constant uid , ')'