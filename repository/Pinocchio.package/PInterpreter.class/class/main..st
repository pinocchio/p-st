interpretation
main: args
	args isEmpty ifFalse: [
		self load: args first.
	]