interpretation
run
	args isEmpty
		ifTrue: [ PShell runWith: self ]
		ifFalse: [ self interpretFile: args first ]