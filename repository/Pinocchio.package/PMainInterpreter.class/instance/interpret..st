interpretation
interpret: code
	^ [ self perform: (self compile: code) selector ] 
		on: Object 
		do: [ :ex |
			PFile stderr red.
			ex warnOn: PFile stderr.
			PFile stderr clear.
			PVoid ].