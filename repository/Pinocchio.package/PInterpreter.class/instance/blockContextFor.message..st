application
blockContextFor: aBlockClosure message: aMessage
	| block size |
	block := aBlockClosure code.
	size := block params size + block locals size.
	size = 0 ifTrue: [ context := aBlockClosure context ]
		ifFalse: [ 
			context := (PBlockContext new: size)
				returnContext: context;
				outerScope: aBlockClosure context;
				closure: aBlockClosure;
				homeContext: aBlockClosure context homeContext ].
	aMessage withIndexDo: [ :value :index | context at: index put: value ].