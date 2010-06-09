visitor
visitBlock: aPinocchioBlock
	| params locals threaded |
	params := aPinocchioBlock params asPObject.
	locals := aPinocchioBlock locals asPObject.
	threaded :=  aPinocchioBlock threaded asPObject.
	self visit: params.
	self visit: locals.
	self visit: (self preprocessThreadedArray: threaded).
	self visitCollection: aPinocchioBlock.
	self
		createSized: aPinocchioBlock
		with: 'new_Block_with(', '(Array)', params uid , ', ',
								       '(Array)', locals uid, ', ',
									 '(Array)',threaded uid.