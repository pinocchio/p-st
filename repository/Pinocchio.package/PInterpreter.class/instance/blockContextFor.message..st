application
blockContextFor: aBlockClosure message: aMessage
	| block |
	block := aBlockClosure code.
	context := (PBlockContext new: block params size + block locals size)
		returnContext: context;
		outerScope: aBlockClosure context;
		closure: aBlockClosure;
		homeContext: aBlockClosure context homeContext.
	aMessage withIndexDo: [ :value :index | context at: index put: value ].