interpretation
main: args
	| interpreter |
	interpreter := self new args: args.
	interpreter run.