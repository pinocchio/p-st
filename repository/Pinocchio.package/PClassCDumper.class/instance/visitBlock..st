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
		with: 'new_Block_with(' , '(Array)' , params uid , ', ' , '(Array)' , locals uid