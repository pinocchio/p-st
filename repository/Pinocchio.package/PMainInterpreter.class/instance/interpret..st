interpretation
interpret: code
	[ ^ self perform: (self compile: code) selector ] 
		on: Object 
		do: [ :ex | 
			self exceptions add: ex.
			PTerminal stderr red.
			ex warnOn: PTerminal stderr.
			PTerminal stderr clear.
			^ PVoid ].