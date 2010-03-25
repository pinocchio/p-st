visitor
visitBlock: aPinocchioBlock
	| params locals |
	params := aPinocchioBlock params asPObject.
	locals := aPinocchioBlock locals asPObject.
	self visit: params.
	self visit: locals.
	self visitCollection: aPinocchioBlock.
	self
		createSized: aPinocchioBlock
		with: 'new_AST_Block_with(' , '(Type_Array)' , params uid , ', ' , '(Type_Array)' , locals uid