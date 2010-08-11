interpretation
interpret: code
	^ [ self perform: (self compile: code) selector ] 
		on: Object 
		do: [ :ex | 
			self exceptions add: ex.
			error red.
			ex warnOn: error.
			error clear.
			PVoid ].