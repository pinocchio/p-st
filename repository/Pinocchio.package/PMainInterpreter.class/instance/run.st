interpretation
run
	args isEmpty
		ifTrue: [ self shell ]
		ifFalse: [ self interpretFile: args first ]