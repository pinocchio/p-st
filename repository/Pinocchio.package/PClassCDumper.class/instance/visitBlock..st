visitor
visitBlock: aPinocchioBlock 
	self visit: aPinocchioBlock params.
	self visit: aPinocchioBlock locals.
	self visitCollection: aPinocchioBlock.
	self createSized: aPinocchioBlock 
		with: ('new_AST_Block_with(', 
			'(Type_Array)', aPinocchioBlock params uid,', ',
			'(Type_Array)', aPinocchioBlock locals uid,', ',
			aPinocchioBlock depth asString)