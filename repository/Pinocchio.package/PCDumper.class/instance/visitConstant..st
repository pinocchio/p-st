visitor
visitConstant: aPinocchioConstant
	| constant |
	constant := aPinocchioConstant constant.
	self visit: constant.
	self put: aPinocchioConstant with: [ :s|
			s << 'new_Constant((Optr)' << (self idFor: constant ) << ')'].