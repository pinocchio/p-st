visitor
visitAssign: aPinocchioAssign
	self visit: aPinocchioAssign variable.
	self visit: aPinocchioAssign expression.
	self put: aPinocchioAssign
		with: [ :s| s << 'new_Assign((Optr)' << aPinocchioAssign variable uid << ', (Optr)' << aPinocchioAssign expression uid << $)].