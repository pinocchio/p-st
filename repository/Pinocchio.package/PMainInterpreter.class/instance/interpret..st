interpretation
interpret: code
	^ [ self perform: (self compile: code) selector ] 
		on: Object 
		do: [ :ex |
			PVTermOutputDriver stderr red.
			ex warnOn: PFile stderr.
			PVTermOutputDriver stderr normal.
			PFile stderr lf.
			PVoid ].