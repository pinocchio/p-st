interpretation
interpret: code
	| value |
	code = '' ifTrue: [ ^ PVoid ].
	^ [ value := self perform: (self compile: code) selector.
		history add: code. 
		value.] 
		on: Object 
		do: [ :ex | 
			self exceptions add: ex.
			error yellow.
			ex printStacktraceOn: error.
			error lf; red.
			ex warnOn: error.
			error clear; lf.
			PVoid ].