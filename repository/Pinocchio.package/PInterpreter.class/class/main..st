interpretation
main: args
	args isEmpty
		ifTrue: [ self shell. ]
		ifFalse: [ self load: args first. ].