interpretation
main: args
	| interpreter |
	interpreter := PInterpreter new args: args.
	interpreter run.