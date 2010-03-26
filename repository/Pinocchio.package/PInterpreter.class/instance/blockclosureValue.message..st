application
blockclosureValue: aBlockClosure message: args
	| block pc result |
	PFile stderr: 'Applying block at level: ', self class name.
	PFile stderr lf.
	block := aBlockClosure code.
	context := (PBlockContext new: block params size + block locals size)
		returnContext: context;
		outerScope: aBlockClosure context;
		closure: aBlockClosure;
		homeContext: aBlockClosure context homeContext.
	args withIndexDo: [ :value :index | context at: index put: value ].
	[ (pc := context nextPc) < block size ] whileTrue: [ (block at: pc) accept: self ].
	result := (block at: pc) accept: self.
	context := context returnContext.
	^ result