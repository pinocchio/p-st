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
		with: 'new_AST_Block_with(' , '(Collection_Array)' , params uid , ', ' , '(Collection_Array)' , locals uid