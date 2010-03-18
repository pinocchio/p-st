interpreting
visitBlock: aBlock
	^ PBlockClosure new
		context: context;
		code: aBlock