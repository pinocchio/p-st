visitor
visitAssign: aPinocchioAssign
	self visit: aPinocchioAssign variable.
	self visit: aPinocchioAssign expression.
	self put: aPinocchioAssign with: [ :s| 
			s << 'new_Assign((Optr)' << (self idFor: aPinocchioAssign variable) 
			<< ', (Optr)' << (self idFor: aPinocchioAssign expression) << $)].