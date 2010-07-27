visitor
visitConstant: aPinocchioConstant
	| constant |
	constant := aPinocchioConstant constant asPObject.
	self visit: constant.
	self put: aPinocchioConstant with: [ :s|
			s << 'new_Constant((Optr)' << (self idFor: constant ) << ')'].