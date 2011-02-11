interpretation
interpret: code
	| value |
	code = '' ifTrue: [ ^ PVoid ].
	^ [ value := self evaluate: code. 
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