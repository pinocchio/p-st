application
blockclosureValue: aBlockClosure message: aMessage
	| block pc result |
	block := aBlockClosure code.
	self assert: block params size = aMessage size.
	context := (PBlockContext new: block params size + block locals size)
		returnContext: context;
		outerScope: aBlockClosure context;
		closure: aBlockClosure;
		homeContext: aBlockClosure context homeContext.
	aMessage withIndexDo: [ :value :index | context at: index put: value ].

	pc := 0.
	[ (pc := pc + 1) < block size ] whileTrue: [ (block at: pc) accept: self ].
	result := (block at: pc) accept: self.
	context := context returnContext.
	^ result