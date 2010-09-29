visitor
visitBlock: aPinocchioBlock
	| params locals threaded |
	params := aPinocchioBlock params asPObject.
	locals := aPinocchioBlock locals asPObject.
	threaded :=  aPinocchioBlock threaded asPObject.
	self visit: params.
	self visit: locals.
	self visit: threaded.
	self visitCollection: aPinocchioBlock.
	self createSized: aPinocchioBlock with: [ :s| 
			s << 'new_Block_with(' << (self idFor: params) << ', '
								      << (self idFor: locals) << ', '
									<< (self idFor: threaded)].