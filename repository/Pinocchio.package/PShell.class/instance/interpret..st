interpretation
interpret: code
	^ [ self perform: (self compile: code) selector ] 
		on: Object 
		do: [ :ex | 
			self exceptions add: ex.
			error yellow.
			ex printStacktraceOn: error.
			error lf; red.
			ex warnOn: error.
			error clear.
			PVoid ].